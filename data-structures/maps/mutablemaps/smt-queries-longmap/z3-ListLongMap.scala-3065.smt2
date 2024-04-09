; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43242 () Bool)

(assert start!43242)

(declare-fun b!478902 () Bool)

(declare-fun e!281716 () Bool)

(declare-datatypes ((array!30885 0))(
  ( (array!30886 (arr!14847 (Array (_ BitVec 32) (_ BitVec 64))) (size!15205 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30885)

(assert (=> b!478902 (= e!281716 (bvsgt #b00000000000000000000000000000000 (size!15205 _keys!1874)))))

(declare-fun mapNonEmpty!22129 () Bool)

(declare-fun mapRes!22129 () Bool)

(declare-fun tp!42604 () Bool)

(declare-fun e!281715 () Bool)

(assert (=> mapNonEmpty!22129 (= mapRes!22129 (and tp!42604 e!281715))))

(declare-fun mapKey!22129 () (_ BitVec 32))

(declare-datatypes ((V!19235 0))(
  ( (V!19236 (val!6859 Int)) )
))
(declare-datatypes ((ValueCell!6450 0))(
  ( (ValueCellFull!6450 (v!9144 V!19235)) (EmptyCell!6450) )
))
(declare-fun mapValue!22129 () ValueCell!6450)

(declare-datatypes ((array!30887 0))(
  ( (array!30888 (arr!14848 (Array (_ BitVec 32) ValueCell!6450)) (size!15206 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30887)

(declare-fun mapRest!22129 () (Array (_ BitVec 32) ValueCell!6450))

(assert (=> mapNonEmpty!22129 (= (arr!14848 _values!1516) (store mapRest!22129 mapKey!22129 mapValue!22129))))

(declare-fun b!478903 () Bool)

(declare-fun e!281714 () Bool)

(declare-fun e!281713 () Bool)

(assert (=> b!478903 (= e!281714 (and e!281713 mapRes!22129))))

(declare-fun condMapEmpty!22129 () Bool)

(declare-fun mapDefault!22129 () ValueCell!6450)

(assert (=> b!478903 (= condMapEmpty!22129 (= (arr!14848 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6450)) mapDefault!22129)))))

(declare-fun b!478904 () Bool)

(declare-fun res!285754 () Bool)

(assert (=> b!478904 (=> (not res!285754) (not e!281716))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30885 (_ BitVec 32)) Bool)

(assert (=> b!478904 (= res!285754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun res!285755 () Bool)

(assert (=> start!43242 (=> (not res!285755) (not e!281716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43242 (= res!285755 (validMask!0 mask!2352))))

(assert (=> start!43242 e!281716))

(assert (=> start!43242 true))

(declare-fun array_inv!10698 (array!30887) Bool)

(assert (=> start!43242 (and (array_inv!10698 _values!1516) e!281714)))

(declare-fun array_inv!10699 (array!30885) Bool)

(assert (=> start!43242 (array_inv!10699 _keys!1874)))

(declare-fun b!478905 () Bool)

(declare-fun tp_is_empty!13623 () Bool)

(assert (=> b!478905 (= e!281715 tp_is_empty!13623)))

(declare-fun b!478906 () Bool)

(declare-fun res!285756 () Bool)

(assert (=> b!478906 (=> (not res!285756) (not e!281716))))

(declare-datatypes ((List!9111 0))(
  ( (Nil!9108) (Cons!9107 (h!9963 (_ BitVec 64)) (t!15325 List!9111)) )
))
(declare-fun arrayNoDuplicates!0 (array!30885 (_ BitVec 32) List!9111) Bool)

(assert (=> b!478906 (= res!285756 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9108))))

(declare-fun mapIsEmpty!22129 () Bool)

(assert (=> mapIsEmpty!22129 mapRes!22129))

(declare-fun b!478907 () Bool)

(declare-fun res!285753 () Bool)

(assert (=> b!478907 (=> (not res!285753) (not e!281716))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478907 (= res!285753 (and (= (size!15206 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15205 _keys!1874) (size!15206 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478908 () Bool)

(assert (=> b!478908 (= e!281713 tp_is_empty!13623)))

(assert (= (and start!43242 res!285755) b!478907))

(assert (= (and b!478907 res!285753) b!478904))

(assert (= (and b!478904 res!285754) b!478906))

(assert (= (and b!478906 res!285756) b!478902))

(assert (= (and b!478903 condMapEmpty!22129) mapIsEmpty!22129))

(assert (= (and b!478903 (not condMapEmpty!22129)) mapNonEmpty!22129))

(get-info :version)

(assert (= (and mapNonEmpty!22129 ((_ is ValueCellFull!6450) mapValue!22129)) b!478905))

(assert (= (and b!478903 ((_ is ValueCellFull!6450) mapDefault!22129)) b!478908))

(assert (= start!43242 b!478903))

(declare-fun m!460981 () Bool)

(assert (=> mapNonEmpty!22129 m!460981))

(declare-fun m!460983 () Bool)

(assert (=> b!478904 m!460983))

(declare-fun m!460985 () Bool)

(assert (=> start!43242 m!460985))

(declare-fun m!460987 () Bool)

(assert (=> start!43242 m!460987))

(declare-fun m!460989 () Bool)

(assert (=> start!43242 m!460989))

(declare-fun m!460991 () Bool)

(assert (=> b!478906 m!460991))

(check-sat (not b!478906) tp_is_empty!13623 (not start!43242) (not b!478904) (not mapNonEmpty!22129))
(check-sat)
(get-model)

(declare-fun d!76525 () Bool)

(assert (=> d!76525 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43242 d!76525))

(declare-fun d!76527 () Bool)

(assert (=> d!76527 (= (array_inv!10698 _values!1516) (bvsge (size!15206 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43242 d!76527))

(declare-fun d!76529 () Bool)

(assert (=> d!76529 (= (array_inv!10699 _keys!1874) (bvsge (size!15205 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43242 d!76529))

(declare-fun b!478940 () Bool)

(declare-fun e!281742 () Bool)

(declare-fun contains!2586 (List!9111 (_ BitVec 64)) Bool)

(assert (=> b!478940 (= e!281742 (contains!2586 Nil!9108 (select (arr!14847 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30838 () Bool)

(declare-fun call!30841 () Bool)

(declare-fun c!57598 () Bool)

(assert (=> bm!30838 (= call!30841 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57598 (Cons!9107 (select (arr!14847 _keys!1874) #b00000000000000000000000000000000) Nil!9108) Nil!9108)))))

(declare-fun b!478941 () Bool)

(declare-fun e!281741 () Bool)

(declare-fun e!281743 () Bool)

(assert (=> b!478941 (= e!281741 e!281743)))

(declare-fun res!285777 () Bool)

(assert (=> b!478941 (=> (not res!285777) (not e!281743))))

(assert (=> b!478941 (= res!285777 (not e!281742))))

(declare-fun res!285776 () Bool)

(assert (=> b!478941 (=> (not res!285776) (not e!281742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!478941 (= res!285776 (validKeyInArray!0 (select (arr!14847 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76531 () Bool)

(declare-fun res!285775 () Bool)

(assert (=> d!76531 (=> res!285775 e!281741)))

(assert (=> d!76531 (= res!285775 (bvsge #b00000000000000000000000000000000 (size!15205 _keys!1874)))))

(assert (=> d!76531 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9108) e!281741)))

(declare-fun b!478942 () Bool)

(declare-fun e!281740 () Bool)

(assert (=> b!478942 (= e!281740 call!30841)))

(declare-fun b!478943 () Bool)

(assert (=> b!478943 (= e!281740 call!30841)))

(declare-fun b!478944 () Bool)

(assert (=> b!478944 (= e!281743 e!281740)))

(assert (=> b!478944 (= c!57598 (validKeyInArray!0 (select (arr!14847 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76531 (not res!285775)) b!478941))

(assert (= (and b!478941 res!285776) b!478940))

(assert (= (and b!478941 res!285777) b!478944))

(assert (= (and b!478944 c!57598) b!478942))

(assert (= (and b!478944 (not c!57598)) b!478943))

(assert (= (or b!478942 b!478943) bm!30838))

(declare-fun m!461005 () Bool)

(assert (=> b!478940 m!461005))

(assert (=> b!478940 m!461005))

(declare-fun m!461007 () Bool)

(assert (=> b!478940 m!461007))

(assert (=> bm!30838 m!461005))

(declare-fun m!461009 () Bool)

(assert (=> bm!30838 m!461009))

(assert (=> b!478941 m!461005))

(assert (=> b!478941 m!461005))

(declare-fun m!461011 () Bool)

(assert (=> b!478941 m!461011))

(assert (=> b!478944 m!461005))

(assert (=> b!478944 m!461005))

(assert (=> b!478944 m!461011))

(assert (=> b!478906 d!76531))

(declare-fun b!478953 () Bool)

(declare-fun e!281751 () Bool)

(declare-fun e!281750 () Bool)

(assert (=> b!478953 (= e!281751 e!281750)))

(declare-fun lt!217782 () (_ BitVec 64))

(assert (=> b!478953 (= lt!217782 (select (arr!14847 _keys!1874) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14034 0))(
  ( (Unit!14035) )
))
(declare-fun lt!217783 () Unit!14034)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30885 (_ BitVec 64) (_ BitVec 32)) Unit!14034)

(assert (=> b!478953 (= lt!217783 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!217782 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!478953 (arrayContainsKey!0 _keys!1874 lt!217782 #b00000000000000000000000000000000)))

(declare-fun lt!217784 () Unit!14034)

(assert (=> b!478953 (= lt!217784 lt!217783)))

(declare-fun res!285783 () Bool)

(declare-datatypes ((SeekEntryResult!3555 0))(
  ( (MissingZero!3555 (index!16399 (_ BitVec 32))) (Found!3555 (index!16400 (_ BitVec 32))) (Intermediate!3555 (undefined!4367 Bool) (index!16401 (_ BitVec 32)) (x!44974 (_ BitVec 32))) (Undefined!3555) (MissingVacant!3555 (index!16402 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30885 (_ BitVec 32)) SeekEntryResult!3555)

(assert (=> b!478953 (= res!285783 (= (seekEntryOrOpen!0 (select (arr!14847 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3555 #b00000000000000000000000000000000)))))

(assert (=> b!478953 (=> (not res!285783) (not e!281750))))

(declare-fun b!478954 () Bool)

(declare-fun call!30844 () Bool)

(assert (=> b!478954 (= e!281750 call!30844)))

(declare-fun b!478955 () Bool)

(assert (=> b!478955 (= e!281751 call!30844)))

(declare-fun bm!30841 () Bool)

(assert (=> bm!30841 (= call!30844 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun d!76533 () Bool)

(declare-fun res!285782 () Bool)

(declare-fun e!281752 () Bool)

(assert (=> d!76533 (=> res!285782 e!281752)))

(assert (=> d!76533 (= res!285782 (bvsge #b00000000000000000000000000000000 (size!15205 _keys!1874)))))

(assert (=> d!76533 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!281752)))

(declare-fun b!478956 () Bool)

(assert (=> b!478956 (= e!281752 e!281751)))

(declare-fun c!57601 () Bool)

(assert (=> b!478956 (= c!57601 (validKeyInArray!0 (select (arr!14847 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76533 (not res!285782)) b!478956))

(assert (= (and b!478956 c!57601) b!478953))

(assert (= (and b!478956 (not c!57601)) b!478955))

(assert (= (and b!478953 res!285783) b!478954))

(assert (= (or b!478954 b!478955) bm!30841))

(assert (=> b!478953 m!461005))

(declare-fun m!461013 () Bool)

(assert (=> b!478953 m!461013))

(declare-fun m!461015 () Bool)

(assert (=> b!478953 m!461015))

(assert (=> b!478953 m!461005))

(declare-fun m!461017 () Bool)

(assert (=> b!478953 m!461017))

(declare-fun m!461019 () Bool)

(assert (=> bm!30841 m!461019))

(assert (=> b!478956 m!461005))

(assert (=> b!478956 m!461005))

(assert (=> b!478956 m!461011))

(assert (=> b!478904 d!76533))

(declare-fun b!478964 () Bool)

(declare-fun e!281757 () Bool)

(assert (=> b!478964 (= e!281757 tp_is_empty!13623)))

(declare-fun b!478963 () Bool)

(declare-fun e!281758 () Bool)

(assert (=> b!478963 (= e!281758 tp_is_empty!13623)))

(declare-fun mapNonEmpty!22135 () Bool)

(declare-fun mapRes!22135 () Bool)

(declare-fun tp!42610 () Bool)

(assert (=> mapNonEmpty!22135 (= mapRes!22135 (and tp!42610 e!281758))))

(declare-fun mapValue!22135 () ValueCell!6450)

(declare-fun mapRest!22135 () (Array (_ BitVec 32) ValueCell!6450))

(declare-fun mapKey!22135 () (_ BitVec 32))

(assert (=> mapNonEmpty!22135 (= mapRest!22129 (store mapRest!22135 mapKey!22135 mapValue!22135))))

(declare-fun condMapEmpty!22135 () Bool)

(declare-fun mapDefault!22135 () ValueCell!6450)

(assert (=> mapNonEmpty!22129 (= condMapEmpty!22135 (= mapRest!22129 ((as const (Array (_ BitVec 32) ValueCell!6450)) mapDefault!22135)))))

(assert (=> mapNonEmpty!22129 (= tp!42604 (and e!281757 mapRes!22135))))

(declare-fun mapIsEmpty!22135 () Bool)

(assert (=> mapIsEmpty!22135 mapRes!22135))

(assert (= (and mapNonEmpty!22129 condMapEmpty!22135) mapIsEmpty!22135))

(assert (= (and mapNonEmpty!22129 (not condMapEmpty!22135)) mapNonEmpty!22135))

(assert (= (and mapNonEmpty!22135 ((_ is ValueCellFull!6450) mapValue!22135)) b!478963))

(assert (= (and mapNonEmpty!22129 ((_ is ValueCellFull!6450) mapDefault!22135)) b!478964))

(declare-fun m!461021 () Bool)

(assert (=> mapNonEmpty!22135 m!461021))

(check-sat (not b!478953) (not mapNonEmpty!22135) tp_is_empty!13623 (not b!478956) (not b!478941) (not bm!30841) (not b!478940) (not b!478944) (not bm!30838))
(check-sat)
