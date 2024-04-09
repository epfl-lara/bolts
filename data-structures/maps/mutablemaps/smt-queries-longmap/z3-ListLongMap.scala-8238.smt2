; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100396 () Bool)

(assert start!100396)

(declare-fun res!797165 () Bool)

(declare-fun e!680422 () Bool)

(assert (=> start!100396 (=> (not res!797165) (not e!680422))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77570 0))(
  ( (array!77571 (arr!37427 (Array (_ BitVec 32) (_ BitVec 64))) (size!37964 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77570)

(assert (=> start!100396 (= res!797165 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37964 _keys!1208))))))

(assert (=> start!100396 e!680422))

(declare-fun array_inv!28430 (array!77570) Bool)

(assert (=> start!100396 (array_inv!28430 _keys!1208)))

(assert (=> start!100396 true))

(declare-datatypes ((V!45667 0))(
  ( (V!45668 (val!15259 Int)) )
))
(declare-datatypes ((ValueCell!14493 0))(
  ( (ValueCellFull!14493 (v!17898 V!45667)) (EmptyCell!14493) )
))
(declare-datatypes ((array!77572 0))(
  ( (array!77573 (arr!37428 (Array (_ BitVec 32) ValueCell!14493)) (size!37965 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77572)

(declare-fun e!680423 () Bool)

(declare-fun array_inv!28431 (array!77572) Bool)

(assert (=> start!100396 (and (array_inv!28431 _values!996) e!680423)))

(declare-fun b!1197697 () Bool)

(declare-fun res!797169 () Bool)

(assert (=> b!1197697 (=> (not res!797169) (not e!680422))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197697 (= res!797169 (validMask!0 mask!1564))))

(declare-fun b!1197698 () Bool)

(declare-fun res!797160 () Bool)

(assert (=> b!1197698 (=> (not res!797160) (not e!680422))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197698 (= res!797160 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37964 _keys!1208))))))

(declare-fun b!1197699 () Bool)

(declare-fun e!680425 () Bool)

(declare-fun mapRes!47447 () Bool)

(assert (=> b!1197699 (= e!680423 (and e!680425 mapRes!47447))))

(declare-fun condMapEmpty!47447 () Bool)

(declare-fun mapDefault!47447 () ValueCell!14493)

(assert (=> b!1197699 (= condMapEmpty!47447 (= (arr!37428 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14493)) mapDefault!47447)))))

(declare-fun b!1197700 () Bool)

(declare-fun res!797164 () Bool)

(assert (=> b!1197700 (=> (not res!797164) (not e!680422))))

(declare-datatypes ((List!26494 0))(
  ( (Nil!26491) (Cons!26490 (h!27699 (_ BitVec 64)) (t!39202 List!26494)) )
))
(declare-fun arrayNoDuplicates!0 (array!77570 (_ BitVec 32) List!26494) Bool)

(assert (=> b!1197700 (= res!797164 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26491))))

(declare-fun b!1197701 () Bool)

(declare-fun res!797161 () Bool)

(declare-fun e!680421 () Bool)

(assert (=> b!1197701 (=> (not res!797161) (not e!680421))))

(declare-fun lt!543293 () array!77570)

(assert (=> b!1197701 (= res!797161 (arrayNoDuplicates!0 lt!543293 #b00000000000000000000000000000000 Nil!26491))))

(declare-fun b!1197702 () Bool)

(declare-fun tp_is_empty!30405 () Bool)

(assert (=> b!1197702 (= e!680425 tp_is_empty!30405)))

(declare-fun b!1197703 () Bool)

(declare-fun res!797163 () Bool)

(assert (=> b!1197703 (=> (not res!797163) (not e!680422))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1197703 (= res!797163 (and (= (size!37965 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37964 _keys!1208) (size!37965 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197704 () Bool)

(assert (=> b!1197704 (= e!680421 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197704 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39648 0))(
  ( (Unit!39649) )
))
(declare-fun lt!543294 () Unit!39648)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77570 (_ BitVec 64) (_ BitVec 32)) Unit!39648)

(assert (=> b!1197704 (= lt!543294 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1197705 () Bool)

(declare-fun res!797162 () Bool)

(assert (=> b!1197705 (=> (not res!797162) (not e!680422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77570 (_ BitVec 32)) Bool)

(assert (=> b!1197705 (= res!797162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47447 () Bool)

(assert (=> mapIsEmpty!47447 mapRes!47447))

(declare-fun b!1197706 () Bool)

(assert (=> b!1197706 (= e!680422 e!680421)))

(declare-fun res!797168 () Bool)

(assert (=> b!1197706 (=> (not res!797168) (not e!680421))))

(assert (=> b!1197706 (= res!797168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543293 mask!1564))))

(assert (=> b!1197706 (= lt!543293 (array!77571 (store (arr!37427 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37964 _keys!1208)))))

(declare-fun b!1197707 () Bool)

(declare-fun e!680424 () Bool)

(assert (=> b!1197707 (= e!680424 tp_is_empty!30405)))

(declare-fun b!1197708 () Bool)

(declare-fun res!797166 () Bool)

(assert (=> b!1197708 (=> (not res!797166) (not e!680422))))

(assert (=> b!1197708 (= res!797166 (= (select (arr!37427 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!47447 () Bool)

(declare-fun tp!90103 () Bool)

(assert (=> mapNonEmpty!47447 (= mapRes!47447 (and tp!90103 e!680424))))

(declare-fun mapValue!47447 () ValueCell!14493)

(declare-fun mapRest!47447 () (Array (_ BitVec 32) ValueCell!14493))

(declare-fun mapKey!47447 () (_ BitVec 32))

(assert (=> mapNonEmpty!47447 (= (arr!37428 _values!996) (store mapRest!47447 mapKey!47447 mapValue!47447))))

(declare-fun b!1197709 () Bool)

(declare-fun res!797167 () Bool)

(assert (=> b!1197709 (=> (not res!797167) (not e!680422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197709 (= res!797167 (validKeyInArray!0 k0!934))))

(assert (= (and start!100396 res!797165) b!1197697))

(assert (= (and b!1197697 res!797169) b!1197703))

(assert (= (and b!1197703 res!797163) b!1197705))

(assert (= (and b!1197705 res!797162) b!1197700))

(assert (= (and b!1197700 res!797164) b!1197698))

(assert (= (and b!1197698 res!797160) b!1197709))

(assert (= (and b!1197709 res!797167) b!1197708))

(assert (= (and b!1197708 res!797166) b!1197706))

(assert (= (and b!1197706 res!797168) b!1197701))

(assert (= (and b!1197701 res!797161) b!1197704))

(assert (= (and b!1197699 condMapEmpty!47447) mapIsEmpty!47447))

(assert (= (and b!1197699 (not condMapEmpty!47447)) mapNonEmpty!47447))

(get-info :version)

(assert (= (and mapNonEmpty!47447 ((_ is ValueCellFull!14493) mapValue!47447)) b!1197707))

(assert (= (and b!1197699 ((_ is ValueCellFull!14493) mapDefault!47447)) b!1197702))

(assert (= start!100396 b!1197699))

(declare-fun m!1104701 () Bool)

(assert (=> start!100396 m!1104701))

(declare-fun m!1104703 () Bool)

(assert (=> start!100396 m!1104703))

(declare-fun m!1104705 () Bool)

(assert (=> b!1197700 m!1104705))

(declare-fun m!1104707 () Bool)

(assert (=> b!1197697 m!1104707))

(declare-fun m!1104709 () Bool)

(assert (=> b!1197708 m!1104709))

(declare-fun m!1104711 () Bool)

(assert (=> b!1197704 m!1104711))

(declare-fun m!1104713 () Bool)

(assert (=> b!1197704 m!1104713))

(declare-fun m!1104715 () Bool)

(assert (=> b!1197709 m!1104715))

(declare-fun m!1104717 () Bool)

(assert (=> b!1197705 m!1104717))

(declare-fun m!1104719 () Bool)

(assert (=> mapNonEmpty!47447 m!1104719))

(declare-fun m!1104721 () Bool)

(assert (=> b!1197701 m!1104721))

(declare-fun m!1104723 () Bool)

(assert (=> b!1197706 m!1104723))

(declare-fun m!1104725 () Bool)

(assert (=> b!1197706 m!1104725))

(check-sat (not b!1197697) (not b!1197704) (not b!1197705) (not b!1197709) (not b!1197700) (not mapNonEmpty!47447) (not start!100396) tp_is_empty!30405 (not b!1197706) (not b!1197701))
(check-sat)
