export default function() {
    Opal.modules["corelib/test"] = 'test';
    console.log("Opal is %O", Opal);
};