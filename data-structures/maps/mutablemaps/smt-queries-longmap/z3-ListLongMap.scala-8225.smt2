; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100296 () Bool)

(assert start!100296)

(declare-fun b!1195880 () Bool)

(declare-fun res!795901 () Bool)

(declare-fun e!679542 () Bool)

(assert (=> b!1195880 (=> (not res!795901) (not e!679542))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195880 (= res!795901 (validMask!0 mask!1564))))

(declare-fun b!1195881 () Bool)

(declare-fun e!679543 () Bool)

(assert (=> b!1195881 (= e!679543 (not true))))

(declare-datatypes ((array!77416 0))(
  ( (array!77417 (arr!37351 (Array (_ BitVec 32) (_ BitVec 64))) (size!37888 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77416)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195881 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39598 0))(
  ( (Unit!39599) )
))
(declare-fun lt!542951 () Unit!39598)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77416 (_ BitVec 64) (_ BitVec 32)) Unit!39598)

(assert (=> b!1195881 (= lt!542951 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1195882 () Bool)

(declare-fun res!795895 () Bool)

(assert (=> b!1195882 (=> (not res!795895) (not e!679542))))

(assert (=> b!1195882 (= res!795895 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37888 _keys!1208))))))

(declare-fun b!1195884 () Bool)

(declare-fun res!795893 () Bool)

(assert (=> b!1195884 (=> (not res!795893) (not e!679542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77416 (_ BitVec 32)) Bool)

(assert (=> b!1195884 (= res!795893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195885 () Bool)

(declare-fun res!795898 () Bool)

(assert (=> b!1195885 (=> (not res!795898) (not e!679542))))

(declare-datatypes ((List!26451 0))(
  ( (Nil!26448) (Cons!26447 (h!27656 (_ BitVec 64)) (t!39129 List!26451)) )
))
(declare-fun arrayNoDuplicates!0 (array!77416 (_ BitVec 32) List!26451) Bool)

(assert (=> b!1195885 (= res!795898 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26448))))

(declare-fun b!1195886 () Bool)

(declare-fun e!679541 () Bool)

(declare-fun tp_is_empty!30327 () Bool)

(assert (=> b!1195886 (= e!679541 tp_is_empty!30327)))

(declare-fun b!1195887 () Bool)

(declare-fun res!795900 () Bool)

(assert (=> b!1195887 (=> (not res!795900) (not e!679543))))

(declare-fun lt!542952 () array!77416)

(assert (=> b!1195887 (= res!795900 (arrayNoDuplicates!0 lt!542952 #b00000000000000000000000000000000 Nil!26448))))

(declare-fun mapIsEmpty!47327 () Bool)

(declare-fun mapRes!47327 () Bool)

(assert (=> mapIsEmpty!47327 mapRes!47327))

(declare-fun mapNonEmpty!47327 () Bool)

(declare-fun tp!89938 () Bool)

(assert (=> mapNonEmpty!47327 (= mapRes!47327 (and tp!89938 e!679541))))

(declare-datatypes ((V!45563 0))(
  ( (V!45564 (val!15220 Int)) )
))
(declare-datatypes ((ValueCell!14454 0))(
  ( (ValueCellFull!14454 (v!17859 V!45563)) (EmptyCell!14454) )
))
(declare-fun mapValue!47327 () ValueCell!14454)

(declare-fun mapRest!47327 () (Array (_ BitVec 32) ValueCell!14454))

(declare-datatypes ((array!77418 0))(
  ( (array!77419 (arr!37352 (Array (_ BitVec 32) ValueCell!14454)) (size!37889 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77418)

(declare-fun mapKey!47327 () (_ BitVec 32))

(assert (=> mapNonEmpty!47327 (= (arr!37352 _values!996) (store mapRest!47327 mapKey!47327 mapValue!47327))))

(declare-fun b!1195888 () Bool)

(declare-fun e!679545 () Bool)

(assert (=> b!1195888 (= e!679545 tp_is_empty!30327)))

(declare-fun b!1195883 () Bool)

(assert (=> b!1195883 (= e!679542 e!679543)))

(declare-fun res!795894 () Bool)

(assert (=> b!1195883 (=> (not res!795894) (not e!679543))))

(assert (=> b!1195883 (= res!795894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542952 mask!1564))))

(assert (=> b!1195883 (= lt!542952 (array!77417 (store (arr!37351 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37888 _keys!1208)))))

(declare-fun res!795897 () Bool)

(assert (=> start!100296 (=> (not res!795897) (not e!679542))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100296 (= res!795897 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37888 _keys!1208))))))

(assert (=> start!100296 e!679542))

(declare-fun array_inv!28372 (array!77416) Bool)

(assert (=> start!100296 (array_inv!28372 _keys!1208)))

(assert (=> start!100296 true))

(declare-fun e!679546 () Bool)

(declare-fun array_inv!28373 (array!77418) Bool)

(assert (=> start!100296 (and (array_inv!28373 _values!996) e!679546)))

(declare-fun b!1195889 () Bool)

(declare-fun res!795896 () Bool)

(assert (=> b!1195889 (=> (not res!795896) (not e!679542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195889 (= res!795896 (validKeyInArray!0 k0!934))))

(declare-fun b!1195890 () Bool)

(declare-fun res!795899 () Bool)

(assert (=> b!1195890 (=> (not res!795899) (not e!679542))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1195890 (= res!795899 (and (= (size!37889 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37888 _keys!1208) (size!37889 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195891 () Bool)

(assert (=> b!1195891 (= e!679546 (and e!679545 mapRes!47327))))

(declare-fun condMapEmpty!47327 () Bool)

(declare-fun mapDefault!47327 () ValueCell!14454)

(assert (=> b!1195891 (= condMapEmpty!47327 (= (arr!37352 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14454)) mapDefault!47327)))))

(declare-fun b!1195892 () Bool)

(declare-fun res!795892 () Bool)

(assert (=> b!1195892 (=> (not res!795892) (not e!679542))))

(assert (=> b!1195892 (= res!795892 (= (select (arr!37351 _keys!1208) i!673) k0!934))))

(assert (= (and start!100296 res!795897) b!1195880))

(assert (= (and b!1195880 res!795901) b!1195890))

(assert (= (and b!1195890 res!795899) b!1195884))

(assert (= (and b!1195884 res!795893) b!1195885))

(assert (= (and b!1195885 res!795898) b!1195882))

(assert (= (and b!1195882 res!795895) b!1195889))

(assert (= (and b!1195889 res!795896) b!1195892))

(assert (= (and b!1195892 res!795892) b!1195883))

(assert (= (and b!1195883 res!795894) b!1195887))

(assert (= (and b!1195887 res!795900) b!1195881))

(assert (= (and b!1195891 condMapEmpty!47327) mapIsEmpty!47327))

(assert (= (and b!1195891 (not condMapEmpty!47327)) mapNonEmpty!47327))

(get-info :version)

(assert (= (and mapNonEmpty!47327 ((_ is ValueCellFull!14454) mapValue!47327)) b!1195886))

(assert (= (and b!1195891 ((_ is ValueCellFull!14454) mapDefault!47327)) b!1195888))

(assert (= start!100296 b!1195891))

(declare-fun m!1103335 () Bool)

(assert (=> b!1195884 m!1103335))

(declare-fun m!1103337 () Bool)

(assert (=> b!1195883 m!1103337))

(declare-fun m!1103339 () Bool)

(assert (=> b!1195883 m!1103339))

(declare-fun m!1103341 () Bool)

(assert (=> b!1195889 m!1103341))

(declare-fun m!1103343 () Bool)

(assert (=> b!1195880 m!1103343))

(declare-fun m!1103345 () Bool)

(assert (=> b!1195892 m!1103345))

(declare-fun m!1103347 () Bool)

(assert (=> b!1195885 m!1103347))

(declare-fun m!1103349 () Bool)

(assert (=> b!1195881 m!1103349))

(declare-fun m!1103351 () Bool)

(assert (=> b!1195881 m!1103351))

(declare-fun m!1103353 () Bool)

(assert (=> b!1195887 m!1103353))

(declare-fun m!1103355 () Bool)

(assert (=> mapNonEmpty!47327 m!1103355))

(declare-fun m!1103357 () Bool)

(assert (=> start!100296 m!1103357))

(declare-fun m!1103359 () Bool)

(assert (=> start!100296 m!1103359))

(check-sat (not b!1195883) (not b!1195887) (not b!1195884) (not start!100296) (not b!1195889) (not b!1195881) (not b!1195880) tp_is_empty!30327 (not mapNonEmpty!47327) (not b!1195885))
(check-sat)
