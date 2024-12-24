#if OS == {
    case .WINDOWS;
        #load "windows.jai";

    case; #assert false  "Unsupported OS";
}
