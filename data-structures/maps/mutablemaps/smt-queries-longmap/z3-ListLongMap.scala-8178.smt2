; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99972 () Bool)

(assert start!99972)

(declare-fun b_free!25515 () Bool)

(declare-fun b_next!25515 () Bool)

(assert (=> start!99972 (= b_free!25515 (not b_next!25515))))

(declare-fun tp!89260 () Bool)

(declare-fun b_and!41911 () Bool)

(assert (=> start!99972 (= tp!89260 b_and!41911)))

(declare-fun b!1189712 () Bool)

(declare-fun res!791257 () Bool)

(declare-fun e!676423 () Bool)

(assert (=> b!1189712 (=> (not res!791257) (not e!676423))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76856 0))(
  ( (array!76857 (arr!37074 (Array (_ BitVec 32) (_ BitVec 64))) (size!37611 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76856)

(assert (=> b!1189712 (= res!791257 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37611 _keys!1208))))))

(declare-fun b!1189713 () Bool)

(declare-fun e!676429 () Bool)

(declare-fun e!676426 () Bool)

(assert (=> b!1189713 (= e!676429 (not e!676426))))

(declare-fun res!791250 () Bool)

(assert (=> b!1189713 (=> res!791250 e!676426)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189713 (= res!791250 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189713 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39406 0))(
  ( (Unit!39407) )
))
(declare-fun lt!541146 () Unit!39406)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76856 (_ BitVec 64) (_ BitVec 32)) Unit!39406)

(assert (=> b!1189713 (= lt!541146 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1189714 () Bool)

(declare-fun res!791258 () Bool)

(assert (=> b!1189714 (=> (not res!791258) (not e!676423))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76856 (_ BitVec 32)) Bool)

(assert (=> b!1189714 (= res!791258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!791253 () Bool)

(assert (=> start!99972 (=> (not res!791253) (not e!676423))))

(assert (=> start!99972 (= res!791253 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37611 _keys!1208))))))

(assert (=> start!99972 e!676423))

(declare-fun tp_is_empty!30045 () Bool)

(assert (=> start!99972 tp_is_empty!30045))

(declare-fun array_inv!28170 (array!76856) Bool)

(assert (=> start!99972 (array_inv!28170 _keys!1208)))

(assert (=> start!99972 true))

(assert (=> start!99972 tp!89260))

(declare-datatypes ((V!45187 0))(
  ( (V!45188 (val!15079 Int)) )
))
(declare-datatypes ((ValueCell!14313 0))(
  ( (ValueCellFull!14313 (v!17718 V!45187)) (EmptyCell!14313) )
))
(declare-datatypes ((array!76858 0))(
  ( (array!76859 (arr!37075 (Array (_ BitVec 32) ValueCell!14313)) (size!37612 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76858)

(declare-fun e!676422 () Bool)

(declare-fun array_inv!28171 (array!76858) Bool)

(assert (=> start!99972 (and (array_inv!28171 _values!996) e!676422)))

(declare-fun b!1189715 () Bool)

(declare-fun res!791256 () Bool)

(assert (=> b!1189715 (=> (not res!791256) (not e!676429))))

(declare-fun lt!541144 () array!76856)

(declare-datatypes ((List!26261 0))(
  ( (Nil!26258) (Cons!26257 (h!27466 (_ BitVec 64)) (t!38775 List!26261)) )
))
(declare-fun arrayNoDuplicates!0 (array!76856 (_ BitVec 32) List!26261) Bool)

(assert (=> b!1189715 (= res!791256 (arrayNoDuplicates!0 lt!541144 #b00000000000000000000000000000000 Nil!26258))))

(declare-fun b!1189716 () Bool)

(declare-fun res!791249 () Bool)

(assert (=> b!1189716 (=> (not res!791249) (not e!676423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189716 (= res!791249 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46895 () Bool)

(declare-fun mapRes!46895 () Bool)

(assert (=> mapIsEmpty!46895 mapRes!46895))

(declare-fun b!1189717 () Bool)

(declare-fun e!676425 () Bool)

(assert (=> b!1189717 (= e!676425 true)))

(declare-fun zeroValue!944 () V!45187)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45187)

(declare-fun lt!541142 () array!76858)

(declare-datatypes ((tuple2!19502 0))(
  ( (tuple2!19503 (_1!9761 (_ BitVec 64)) (_2!9761 V!45187)) )
))
(declare-datatypes ((List!26262 0))(
  ( (Nil!26259) (Cons!26258 (h!27467 tuple2!19502) (t!38776 List!26262)) )
))
(declare-datatypes ((ListLongMap!17483 0))(
  ( (ListLongMap!17484 (toList!8757 List!26262)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5171 (array!76856 array!76858 (_ BitVec 32) (_ BitVec 32) V!45187 V!45187 (_ BitVec 32) Int) ListLongMap!17483)

(declare-fun -!1739 (ListLongMap!17483 (_ BitVec 64)) ListLongMap!17483)

(assert (=> b!1189717 (= (getCurrentListMapNoExtraKeys!5171 lt!541144 lt!541142 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1739 (getCurrentListMapNoExtraKeys!5171 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541141 () Unit!39406)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!945 (array!76856 array!76858 (_ BitVec 32) (_ BitVec 32) V!45187 V!45187 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39406)

(assert (=> b!1189717 (= lt!541141 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!945 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189718 () Bool)

(assert (=> b!1189718 (= e!676423 e!676429)))

(declare-fun res!791254 () Bool)

(assert (=> b!1189718 (=> (not res!791254) (not e!676429))))

(assert (=> b!1189718 (= res!791254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541144 mask!1564))))

(assert (=> b!1189718 (= lt!541144 (array!76857 (store (arr!37074 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37611 _keys!1208)))))

(declare-fun b!1189719 () Bool)

(declare-fun e!676427 () Bool)

(assert (=> b!1189719 (= e!676427 tp_is_empty!30045)))

(declare-fun b!1189720 () Bool)

(declare-fun res!791251 () Bool)

(assert (=> b!1189720 (=> (not res!791251) (not e!676423))))

(assert (=> b!1189720 (= res!791251 (= (select (arr!37074 _keys!1208) i!673) k0!934))))

(declare-fun b!1189721 () Bool)

(declare-fun res!791260 () Bool)

(assert (=> b!1189721 (=> (not res!791260) (not e!676423))))

(assert (=> b!1189721 (= res!791260 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26258))))

(declare-fun mapNonEmpty!46895 () Bool)

(declare-fun tp!89259 () Bool)

(declare-fun e!676428 () Bool)

(assert (=> mapNonEmpty!46895 (= mapRes!46895 (and tp!89259 e!676428))))

(declare-fun mapKey!46895 () (_ BitVec 32))

(declare-fun mapValue!46895 () ValueCell!14313)

(declare-fun mapRest!46895 () (Array (_ BitVec 32) ValueCell!14313))

(assert (=> mapNonEmpty!46895 (= (arr!37075 _values!996) (store mapRest!46895 mapKey!46895 mapValue!46895))))

(declare-fun b!1189722 () Bool)

(declare-fun res!791252 () Bool)

(assert (=> b!1189722 (=> (not res!791252) (not e!676423))))

(assert (=> b!1189722 (= res!791252 (and (= (size!37612 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37611 _keys!1208) (size!37612 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189723 () Bool)

(assert (=> b!1189723 (= e!676422 (and e!676427 mapRes!46895))))

(declare-fun condMapEmpty!46895 () Bool)

(declare-fun mapDefault!46895 () ValueCell!14313)

(assert (=> b!1189723 (= condMapEmpty!46895 (= (arr!37075 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14313)) mapDefault!46895)))))

(declare-fun b!1189724 () Bool)

(assert (=> b!1189724 (= e!676426 e!676425)))

(declare-fun res!791259 () Bool)

(assert (=> b!1189724 (=> res!791259 e!676425)))

(assert (=> b!1189724 (= res!791259 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541143 () ListLongMap!17483)

(assert (=> b!1189724 (= lt!541143 (getCurrentListMapNoExtraKeys!5171 lt!541144 lt!541142 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3123 (Int (_ BitVec 64)) V!45187)

(assert (=> b!1189724 (= lt!541142 (array!76859 (store (arr!37075 _values!996) i!673 (ValueCellFull!14313 (dynLambda!3123 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37612 _values!996)))))

(declare-fun lt!541145 () ListLongMap!17483)

(assert (=> b!1189724 (= lt!541145 (getCurrentListMapNoExtraKeys!5171 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189725 () Bool)

(assert (=> b!1189725 (= e!676428 tp_is_empty!30045)))

(declare-fun b!1189726 () Bool)

(declare-fun res!791255 () Bool)

(assert (=> b!1189726 (=> (not res!791255) (not e!676423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189726 (= res!791255 (validKeyInArray!0 k0!934))))

(assert (= (and start!99972 res!791253) b!1189716))

(assert (= (and b!1189716 res!791249) b!1189722))

(assert (= (and b!1189722 res!791252) b!1189714))

(assert (= (and b!1189714 res!791258) b!1189721))

(assert (= (and b!1189721 res!791260) b!1189712))

(assert (= (and b!1189712 res!791257) b!1189726))

(assert (= (and b!1189726 res!791255) b!1189720))

(assert (= (and b!1189720 res!791251) b!1189718))

(assert (= (and b!1189718 res!791254) b!1189715))

(assert (= (and b!1189715 res!791256) b!1189713))

(assert (= (and b!1189713 (not res!791250)) b!1189724))

(assert (= (and b!1189724 (not res!791259)) b!1189717))

(assert (= (and b!1189723 condMapEmpty!46895) mapIsEmpty!46895))

(assert (= (and b!1189723 (not condMapEmpty!46895)) mapNonEmpty!46895))

(get-info :version)

(assert (= (and mapNonEmpty!46895 ((_ is ValueCellFull!14313) mapValue!46895)) b!1189725))

(assert (= (and b!1189723 ((_ is ValueCellFull!14313) mapDefault!46895)) b!1189719))

(assert (= start!99972 b!1189723))

(declare-fun b_lambda!20677 () Bool)

(assert (=> (not b_lambda!20677) (not b!1189724)))

(declare-fun t!38774 () Bool)

(declare-fun tb!10335 () Bool)

(assert (=> (and start!99972 (= defaultEntry!1004 defaultEntry!1004) t!38774) tb!10335))

(declare-fun result!21229 () Bool)

(assert (=> tb!10335 (= result!21229 tp_is_empty!30045)))

(assert (=> b!1189724 t!38774))

(declare-fun b_and!41913 () Bool)

(assert (= b_and!41911 (and (=> t!38774 result!21229) b_and!41913)))

(declare-fun m!1098407 () Bool)

(assert (=> b!1189716 m!1098407))

(declare-fun m!1098409 () Bool)

(assert (=> b!1189718 m!1098409))

(declare-fun m!1098411 () Bool)

(assert (=> b!1189718 m!1098411))

(declare-fun m!1098413 () Bool)

(assert (=> b!1189721 m!1098413))

(declare-fun m!1098415 () Bool)

(assert (=> start!99972 m!1098415))

(declare-fun m!1098417 () Bool)

(assert (=> start!99972 m!1098417))

(declare-fun m!1098419 () Bool)

(assert (=> mapNonEmpty!46895 m!1098419))

(declare-fun m!1098421 () Bool)

(assert (=> b!1189720 m!1098421))

(declare-fun m!1098423 () Bool)

(assert (=> b!1189726 m!1098423))

(declare-fun m!1098425 () Bool)

(assert (=> b!1189715 m!1098425))

(declare-fun m!1098427 () Bool)

(assert (=> b!1189713 m!1098427))

(declare-fun m!1098429 () Bool)

(assert (=> b!1189713 m!1098429))

(declare-fun m!1098431 () Bool)

(assert (=> b!1189724 m!1098431))

(declare-fun m!1098433 () Bool)

(assert (=> b!1189724 m!1098433))

(declare-fun m!1098435 () Bool)

(assert (=> b!1189724 m!1098435))

(declare-fun m!1098437 () Bool)

(assert (=> b!1189724 m!1098437))

(declare-fun m!1098439 () Bool)

(assert (=> b!1189717 m!1098439))

(declare-fun m!1098441 () Bool)

(assert (=> b!1189717 m!1098441))

(assert (=> b!1189717 m!1098441))

(declare-fun m!1098443 () Bool)

(assert (=> b!1189717 m!1098443))

(declare-fun m!1098445 () Bool)

(assert (=> b!1189717 m!1098445))

(declare-fun m!1098447 () Bool)

(assert (=> b!1189714 m!1098447))

(check-sat (not b!1189724) (not b!1189715) (not b!1189716) tp_is_empty!30045 (not b!1189726) (not b_next!25515) (not mapNonEmpty!46895) (not b!1189714) (not b!1189713) (not start!99972) (not b!1189721) (not b_lambda!20677) b_and!41913 (not b!1189718) (not b!1189717))
(check-sat b_and!41913 (not b_next!25515))
