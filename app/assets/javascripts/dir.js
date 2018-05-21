/* Generated by Opal 0.11.1.dev */

export default function() {
    Opal.modules["corelib/dir"] = function(Opal) {
        var self = Opal.top, $nesting = [], nil = Opal.nil, $$$ = Opal.const_get_qualified, $$ = Opal.const_get_relative, $breaker = Opal.breaker, $slice = Opal.slice, $klass = Opal.klass, $truthy = Opal.truthy;

        Opal.add_stubs(['$[]']);
        return (function($base, $super, $parent_nesting) {
            function $Dir(){};
            var self = $Dir = $klass($base, $super, 'Dir', $Dir);

            var def = self.$$proto, $nesting = [self].concat($parent_nesting);

            return (function(self, $parent_nesting) {
                var def = self.$$proto, $nesting = [self].concat($parent_nesting), TMP_chdir_1, TMP_pwd_2, TMP_home_3;



                Opal.def(self, '$chdir', TMP_chdir_1 = function $$chdir(dir) {
                    var self = this, $iter = TMP_chdir_1.$$p, $yield = $iter || nil, prev_cwd = nil;

                    if ($iter) TMP_chdir_1.$$p = null;
                    return (function() { try {

                        prev_cwd = Opal.current_dir;
                        Opal.current_dir = dir;
                        return Opal.yieldX($yield, []);;
                    } finally {
                        Opal.current_dir = prev_cwd
                    }; })()
                }, TMP_chdir_1.$$arity = 1);

                Opal.def(self, '$pwd', TMP_pwd_2 = function $$pwd() {
                    var self = this;

                    return Opal.current_dir || '.';
                }, TMP_pwd_2.$$arity = 0);
                Opal.alias(self, "getwd", "pwd");
                return (Opal.def(self, '$home', TMP_home_3 = function $$home() {
                    var $a, self = this;

                    return ($truthy($a = $$($nesting, 'ENV')['$[]']("HOME")) ? $a : ".")
                }, TMP_home_3.$$arity = 0), nil) && 'home';
            })(Opal.get_singleton_class(self), $nesting)
        })($nesting[0], null, $nesting)
    }

};