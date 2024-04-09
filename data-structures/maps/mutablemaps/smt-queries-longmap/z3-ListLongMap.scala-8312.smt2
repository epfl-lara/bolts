; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101258 () Bool)

(assert start!101258)

(declare-fun b_free!26145 () Bool)

(declare-fun b_next!26145 () Bool)

(assert (=> start!101258 (= b_free!26145 (not b_next!26145))))

(declare-fun tp!91458 () Bool)

(declare-fun b_and!43417 () Bool)

(assert (=> start!101258 (= tp!91458 b_and!43417)))

(declare-fun b!1215388 () Bool)

(declare-fun res!807073 () Bool)

(declare-fun e!690150 () Bool)

(assert (=> b!1215388 (=> (not res!807073) (not e!690150))))

(declare-datatypes ((array!78452 0))(
  ( (array!78453 (arr!37857 (Array (_ BitVec 32) (_ BitVec 64))) (size!38394 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78452)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46259 0))(
  ( (V!46260 (val!15481 Int)) )
))
(declare-datatypes ((ValueCell!14715 0))(
  ( (ValueCellFull!14715 (v!18135 V!46259)) (EmptyCell!14715) )
))
(declare-datatypes ((array!78454 0))(
  ( (array!78455 (arr!37858 (Array (_ BitVec 32) ValueCell!14715)) (size!38395 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78454)

(assert (=> b!1215388 (= res!807073 (and (= (size!38395 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38394 _keys!1208) (size!38395 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215389 () Bool)

(declare-fun e!690153 () Bool)

(declare-fun tp_is_empty!30849 () Bool)

(assert (=> b!1215389 (= e!690153 tp_is_empty!30849)))

(declare-fun b!1215390 () Bool)

(declare-fun res!807071 () Bool)

(assert (=> b!1215390 (=> (not res!807071) (not e!690150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215390 (= res!807071 (validMask!0 mask!1564))))

(declare-fun b!1215391 () Bool)

(declare-fun e!690154 () Bool)

(assert (=> b!1215391 (= e!690150 e!690154)))

(declare-fun res!807064 () Bool)

(assert (=> b!1215391 (=> (not res!807064) (not e!690154))))

(declare-fun lt!552563 () array!78452)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78452 (_ BitVec 32)) Bool)

(assert (=> b!1215391 (= res!807064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552563 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1215391 (= lt!552563 (array!78453 (store (arr!37857 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38394 _keys!1208)))))

(declare-fun mapIsEmpty!48148 () Bool)

(declare-fun mapRes!48148 () Bool)

(assert (=> mapIsEmpty!48148 mapRes!48148))

(declare-fun b!1215392 () Bool)

(declare-fun e!690155 () Bool)

(assert (=> b!1215392 (= e!690154 (not e!690155))))

(declare-fun res!807072 () Bool)

(assert (=> b!1215392 (=> res!807072 e!690155)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1215392 (= res!807072 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215392 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40236 0))(
  ( (Unit!40237) )
))
(declare-fun lt!552562 () Unit!40236)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78452 (_ BitVec 64) (_ BitVec 32)) Unit!40236)

(assert (=> b!1215392 (= lt!552562 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1215393 () Bool)

(declare-fun res!807070 () Bool)

(assert (=> b!1215393 (=> (not res!807070) (not e!690150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215393 (= res!807070 (validKeyInArray!0 k0!934))))

(declare-fun b!1215394 () Bool)

(declare-fun res!807067 () Bool)

(assert (=> b!1215394 (=> (not res!807067) (not e!690150))))

(assert (=> b!1215394 (= res!807067 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38394 _keys!1208))))))

(declare-fun b!1215395 () Bool)

(declare-fun res!807063 () Bool)

(assert (=> b!1215395 (=> (not res!807063) (not e!690154))))

(declare-datatypes ((List!26859 0))(
  ( (Nil!26856) (Cons!26855 (h!28064 (_ BitVec 64)) (t!39991 List!26859)) )
))
(declare-fun arrayNoDuplicates!0 (array!78452 (_ BitVec 32) List!26859) Bool)

(assert (=> b!1215395 (= res!807063 (arrayNoDuplicates!0 lt!552563 #b00000000000000000000000000000000 Nil!26856))))

(declare-fun res!807066 () Bool)

(assert (=> start!101258 (=> (not res!807066) (not e!690150))))

(assert (=> start!101258 (= res!807066 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38394 _keys!1208))))))

(assert (=> start!101258 e!690150))

(assert (=> start!101258 tp_is_empty!30849))

(declare-fun array_inv!28730 (array!78452) Bool)

(assert (=> start!101258 (array_inv!28730 _keys!1208)))

(assert (=> start!101258 true))

(assert (=> start!101258 tp!91458))

(declare-fun e!690156 () Bool)

(declare-fun array_inv!28731 (array!78454) Bool)

(assert (=> start!101258 (and (array_inv!28731 _values!996) e!690156)))

(declare-fun b!1215396 () Bool)

(declare-fun res!807069 () Bool)

(assert (=> b!1215396 (=> (not res!807069) (not e!690150))))

(assert (=> b!1215396 (= res!807069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215397 () Bool)

(declare-fun e!690151 () Bool)

(assert (=> b!1215397 (= e!690151 tp_is_empty!30849)))

(declare-fun b!1215398 () Bool)

(assert (=> b!1215398 (= e!690156 (and e!690153 mapRes!48148))))

(declare-fun condMapEmpty!48148 () Bool)

(declare-fun mapDefault!48148 () ValueCell!14715)

(assert (=> b!1215398 (= condMapEmpty!48148 (= (arr!37858 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14715)) mapDefault!48148)))))

(declare-fun b!1215399 () Bool)

(declare-fun res!807068 () Bool)

(assert (=> b!1215399 (=> (not res!807068) (not e!690150))))

(assert (=> b!1215399 (= res!807068 (= (select (arr!37857 _keys!1208) i!673) k0!934))))

(declare-fun b!1215400 () Bool)

(assert (=> b!1215400 (= e!690155 true)))

(declare-fun zeroValue!944 () V!46259)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20040 0))(
  ( (tuple2!20041 (_1!10030 (_ BitVec 64)) (_2!10030 V!46259)) )
))
(declare-datatypes ((List!26860 0))(
  ( (Nil!26857) (Cons!26856 (h!28065 tuple2!20040) (t!39992 List!26860)) )
))
(declare-datatypes ((ListLongMap!18021 0))(
  ( (ListLongMap!18022 (toList!9026 List!26860)) )
))
(declare-fun lt!552561 () ListLongMap!18021)

(declare-fun minValue!944 () V!46259)

(declare-fun getCurrentListMapNoExtraKeys!5431 (array!78452 array!78454 (_ BitVec 32) (_ BitVec 32) V!46259 V!46259 (_ BitVec 32) Int) ListLongMap!18021)

(declare-fun dynLambda!3340 (Int (_ BitVec 64)) V!46259)

(assert (=> b!1215400 (= lt!552561 (getCurrentListMapNoExtraKeys!5431 lt!552563 (array!78455 (store (arr!37858 _values!996) i!673 (ValueCellFull!14715 (dynLambda!3340 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38395 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552560 () ListLongMap!18021)

(assert (=> b!1215400 (= lt!552560 (getCurrentListMapNoExtraKeys!5431 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215401 () Bool)

(declare-fun res!807065 () Bool)

(assert (=> b!1215401 (=> (not res!807065) (not e!690150))))

(assert (=> b!1215401 (= res!807065 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26856))))

(declare-fun mapNonEmpty!48148 () Bool)

(declare-fun tp!91457 () Bool)

(assert (=> mapNonEmpty!48148 (= mapRes!48148 (and tp!91457 e!690151))))

(declare-fun mapRest!48148 () (Array (_ BitVec 32) ValueCell!14715))

(declare-fun mapValue!48148 () ValueCell!14715)

(declare-fun mapKey!48148 () (_ BitVec 32))

(assert (=> mapNonEmpty!48148 (= (arr!37858 _values!996) (store mapRest!48148 mapKey!48148 mapValue!48148))))

(assert (= (and start!101258 res!807066) b!1215390))

(assert (= (and b!1215390 res!807071) b!1215388))

(assert (= (and b!1215388 res!807073) b!1215396))

(assert (= (and b!1215396 res!807069) b!1215401))

(assert (= (and b!1215401 res!807065) b!1215394))

(assert (= (and b!1215394 res!807067) b!1215393))

(assert (= (and b!1215393 res!807070) b!1215399))

(assert (= (and b!1215399 res!807068) b!1215391))

(assert (= (and b!1215391 res!807064) b!1215395))

(assert (= (and b!1215395 res!807063) b!1215392))

(assert (= (and b!1215392 (not res!807072)) b!1215400))

(assert (= (and b!1215398 condMapEmpty!48148) mapIsEmpty!48148))

(assert (= (and b!1215398 (not condMapEmpty!48148)) mapNonEmpty!48148))

(get-info :version)

(assert (= (and mapNonEmpty!48148 ((_ is ValueCellFull!14715) mapValue!48148)) b!1215397))

(assert (= (and b!1215398 ((_ is ValueCellFull!14715) mapDefault!48148)) b!1215389))

(assert (= start!101258 b!1215398))

(declare-fun b_lambda!21831 () Bool)

(assert (=> (not b_lambda!21831) (not b!1215400)))

(declare-fun t!39990 () Bool)

(declare-fun tb!10953 () Bool)

(assert (=> (and start!101258 (= defaultEntry!1004 defaultEntry!1004) t!39990) tb!10953))

(declare-fun result!22495 () Bool)

(assert (=> tb!10953 (= result!22495 tp_is_empty!30849)))

(assert (=> b!1215400 t!39990))

(declare-fun b_and!43419 () Bool)

(assert (= b_and!43417 (and (=> t!39990 result!22495) b_and!43419)))

(declare-fun m!1120395 () Bool)

(assert (=> b!1215396 m!1120395))

(declare-fun m!1120397 () Bool)

(assert (=> b!1215401 m!1120397))

(declare-fun m!1120399 () Bool)

(assert (=> b!1215393 m!1120399))

(declare-fun m!1120401 () Bool)

(assert (=> b!1215395 m!1120401))

(declare-fun m!1120403 () Bool)

(assert (=> b!1215399 m!1120403))

(declare-fun m!1120405 () Bool)

(assert (=> mapNonEmpty!48148 m!1120405))

(declare-fun m!1120407 () Bool)

(assert (=> b!1215390 m!1120407))

(declare-fun m!1120409 () Bool)

(assert (=> b!1215391 m!1120409))

(declare-fun m!1120411 () Bool)

(assert (=> b!1215391 m!1120411))

(declare-fun m!1120413 () Bool)

(assert (=> b!1215400 m!1120413))

(declare-fun m!1120415 () Bool)

(assert (=> b!1215400 m!1120415))

(declare-fun m!1120417 () Bool)

(assert (=> b!1215400 m!1120417))

(declare-fun m!1120419 () Bool)

(assert (=> b!1215400 m!1120419))

(declare-fun m!1120421 () Bool)

(assert (=> start!101258 m!1120421))

(declare-fun m!1120423 () Bool)

(assert (=> start!101258 m!1120423))

(declare-fun m!1120425 () Bool)

(assert (=> b!1215392 m!1120425))

(declare-fun m!1120427 () Bool)

(assert (=> b!1215392 m!1120427))

(check-sat (not b!1215393) tp_is_empty!30849 (not b!1215396) (not b!1215401) (not b!1215395) (not b!1215390) (not b_lambda!21831) (not b!1215391) b_and!43419 (not b_next!26145) (not b!1215392) (not start!101258) (not b!1215400) (not mapNonEmpty!48148))
(check-sat b_and!43419 (not b_next!26145))
