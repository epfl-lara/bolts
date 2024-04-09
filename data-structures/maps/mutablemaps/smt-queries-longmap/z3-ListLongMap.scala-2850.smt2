; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41140 () Bool)

(assert start!41140)

(declare-fun b_free!11001 () Bool)

(declare-fun b_next!11001 () Bool)

(assert (=> start!41140 (= b_free!11001 (not b_next!11001))))

(declare-fun tp!38839 () Bool)

(declare-fun b_and!19259 () Bool)

(assert (=> start!41140 (= tp!38839 b_and!19259)))

(declare-fun b!458679 () Bool)

(declare-fun e!267783 () Bool)

(declare-fun tp_is_empty!12339 () Bool)

(assert (=> b!458679 (= e!267783 tp_is_empty!12339)))

(declare-fun b!458680 () Bool)

(declare-fun res!274125 () Bool)

(declare-fun e!267782 () Bool)

(assert (=> b!458680 (=> (not res!274125) (not e!267782))))

(declare-datatypes ((array!28445 0))(
  ( (array!28446 (arr!13660 (Array (_ BitVec 32) (_ BitVec 64))) (size!14012 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28445)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458680 (= res!274125 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!20158 () Bool)

(declare-fun mapRes!20158 () Bool)

(declare-fun tp!38838 () Bool)

(declare-fun e!267790 () Bool)

(assert (=> mapNonEmpty!20158 (= mapRes!20158 (and tp!38838 e!267790))))

(declare-fun mapKey!20158 () (_ BitVec 32))

(declare-datatypes ((V!17557 0))(
  ( (V!17558 (val!6214 Int)) )
))
(declare-datatypes ((ValueCell!5826 0))(
  ( (ValueCellFull!5826 (v!8488 V!17557)) (EmptyCell!5826) )
))
(declare-datatypes ((array!28447 0))(
  ( (array!28448 (arr!13661 (Array (_ BitVec 32) ValueCell!5826)) (size!14013 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28447)

(declare-fun mapRest!20158 () (Array (_ BitVec 32) ValueCell!5826))

(declare-fun mapValue!20158 () ValueCell!5826)

(assert (=> mapNonEmpty!20158 (= (arr!13661 _values!549) (store mapRest!20158 mapKey!20158 mapValue!20158))))

(declare-fun res!274120 () Bool)

(assert (=> start!41140 (=> (not res!274120) (not e!267782))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!41140 (= res!274120 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14012 _keys!709))))))

(assert (=> start!41140 e!267782))

(assert (=> start!41140 tp_is_empty!12339))

(assert (=> start!41140 tp!38839))

(assert (=> start!41140 true))

(declare-fun e!267786 () Bool)

(declare-fun array_inv!9880 (array!28447) Bool)

(assert (=> start!41140 (and (array_inv!9880 _values!549) e!267786)))

(declare-fun array_inv!9881 (array!28445) Bool)

(assert (=> start!41140 (array_inv!9881 _keys!709)))

(declare-fun b!458681 () Bool)

(declare-fun e!267788 () Bool)

(declare-fun e!267785 () Bool)

(assert (=> b!458681 (= e!267788 e!267785)))

(declare-fun res!274112 () Bool)

(assert (=> b!458681 (=> (not res!274112) (not e!267785))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458681 (= res!274112 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17557)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8154 0))(
  ( (tuple2!8155 (_1!4087 (_ BitVec 64)) (_2!4087 V!17557)) )
))
(declare-datatypes ((List!8257 0))(
  ( (Nil!8254) (Cons!8253 (h!9109 tuple2!8154) (t!14145 List!8257)) )
))
(declare-datatypes ((ListLongMap!7081 0))(
  ( (ListLongMap!7082 (toList!3556 List!8257)) )
))
(declare-fun lt!207544 () ListLongMap!7081)

(declare-fun lt!207538 () array!28447)

(declare-fun zeroValue!515 () V!17557)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!207543 () array!28445)

(declare-fun getCurrentListMapNoExtraKeys!1728 (array!28445 array!28447 (_ BitVec 32) (_ BitVec 32) V!17557 V!17557 (_ BitVec 32) Int) ListLongMap!7081)

(assert (=> b!458681 (= lt!207544 (getCurrentListMapNoExtraKeys!1728 lt!207543 lt!207538 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17557)

(assert (=> b!458681 (= lt!207538 (array!28448 (store (arr!13661 _values!549) i!563 (ValueCellFull!5826 v!412)) (size!14013 _values!549)))))

(declare-fun lt!207540 () ListLongMap!7081)

(assert (=> b!458681 (= lt!207540 (getCurrentListMapNoExtraKeys!1728 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!458682 () Bool)

(assert (=> b!458682 (= e!267790 tp_is_empty!12339)))

(declare-fun b!458683 () Bool)

(declare-fun res!274119 () Bool)

(assert (=> b!458683 (=> (not res!274119) (not e!267788))))

(declare-datatypes ((List!8258 0))(
  ( (Nil!8255) (Cons!8254 (h!9110 (_ BitVec 64)) (t!14146 List!8258)) )
))
(declare-fun arrayNoDuplicates!0 (array!28445 (_ BitVec 32) List!8258) Bool)

(assert (=> b!458683 (= res!274119 (arrayNoDuplicates!0 lt!207543 #b00000000000000000000000000000000 Nil!8255))))

(declare-fun b!458684 () Bool)

(declare-fun res!274113 () Bool)

(assert (=> b!458684 (=> (not res!274113) (not e!267782))))

(assert (=> b!458684 (= res!274113 (and (= (size!14013 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14012 _keys!709) (size!14013 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458685 () Bool)

(assert (=> b!458685 (= e!267786 (and e!267783 mapRes!20158))))

(declare-fun condMapEmpty!20158 () Bool)

(declare-fun mapDefault!20158 () ValueCell!5826)

(assert (=> b!458685 (= condMapEmpty!20158 (= (arr!13661 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5826)) mapDefault!20158)))))

(declare-fun b!458686 () Bool)

(declare-fun res!274114 () Bool)

(assert (=> b!458686 (=> (not res!274114) (not e!267782))))

(assert (=> b!458686 (= res!274114 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8255))))

(declare-fun b!458687 () Bool)

(declare-fun e!267787 () Bool)

(assert (=> b!458687 (= e!267785 (not e!267787))))

(declare-fun res!274116 () Bool)

(assert (=> b!458687 (=> res!274116 e!267787)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458687 (= res!274116 (not (validKeyInArray!0 (select (arr!13660 _keys!709) from!863))))))

(declare-fun lt!207546 () ListLongMap!7081)

(declare-fun lt!207539 () ListLongMap!7081)

(assert (=> b!458687 (= lt!207546 lt!207539)))

(declare-fun lt!207545 () ListLongMap!7081)

(declare-fun +!1576 (ListLongMap!7081 tuple2!8154) ListLongMap!7081)

(assert (=> b!458687 (= lt!207539 (+!1576 lt!207545 (tuple2!8155 k0!794 v!412)))))

(assert (=> b!458687 (= lt!207546 (getCurrentListMapNoExtraKeys!1728 lt!207543 lt!207538 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!458687 (= lt!207545 (getCurrentListMapNoExtraKeys!1728 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13265 0))(
  ( (Unit!13266) )
))
(declare-fun lt!207541 () Unit!13265)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!735 (array!28445 array!28447 (_ BitVec 32) (_ BitVec 32) V!17557 V!17557 (_ BitVec 32) (_ BitVec 64) V!17557 (_ BitVec 32) Int) Unit!13265)

(assert (=> b!458687 (= lt!207541 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!735 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458688 () Bool)

(declare-fun res!274117 () Bool)

(assert (=> b!458688 (=> (not res!274117) (not e!267788))))

(assert (=> b!458688 (= res!274117 (bvsle from!863 i!563))))

(declare-fun b!458689 () Bool)

(declare-fun e!267789 () Bool)

(assert (=> b!458689 (= e!267787 e!267789)))

(declare-fun res!274124 () Bool)

(assert (=> b!458689 (=> res!274124 e!267789)))

(assert (=> b!458689 (= res!274124 (not (= (select (arr!13660 _keys!709) from!863) k0!794)))))

(declare-fun get!6746 (ValueCell!5826 V!17557) V!17557)

(declare-fun dynLambda!886 (Int (_ BitVec 64)) V!17557)

(assert (=> b!458689 (= lt!207544 (+!1576 lt!207539 (tuple2!8155 (select (arr!13660 _keys!709) from!863) (get!6746 (select (arr!13661 _values!549) from!863) (dynLambda!886 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458690 () Bool)

(declare-fun res!274115 () Bool)

(assert (=> b!458690 (=> (not res!274115) (not e!267782))))

(assert (=> b!458690 (= res!274115 (or (= (select (arr!13660 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13660 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458691 () Bool)

(declare-fun res!274126 () Bool)

(assert (=> b!458691 (=> (not res!274126) (not e!267782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458691 (= res!274126 (validMask!0 mask!1025))))

(declare-fun b!458692 () Bool)

(assert (=> b!458692 (= e!267782 e!267788)))

(declare-fun res!274121 () Bool)

(assert (=> b!458692 (=> (not res!274121) (not e!267788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28445 (_ BitVec 32)) Bool)

(assert (=> b!458692 (= res!274121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207543 mask!1025))))

(assert (=> b!458692 (= lt!207543 (array!28446 (store (arr!13660 _keys!709) i!563 k0!794) (size!14012 _keys!709)))))

(declare-fun b!458693 () Bool)

(declare-fun res!274123 () Bool)

(assert (=> b!458693 (=> (not res!274123) (not e!267782))))

(assert (=> b!458693 (= res!274123 (validKeyInArray!0 k0!794))))

(declare-fun b!458694 () Bool)

(assert (=> b!458694 (= e!267789 true)))

(assert (=> b!458694 false))

(declare-fun lt!207542 () Unit!13265)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28445 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13265)

(assert (=> b!458694 (= lt!207542 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!20158 () Bool)

(assert (=> mapIsEmpty!20158 mapRes!20158))

(declare-fun b!458695 () Bool)

(declare-fun res!274122 () Bool)

(assert (=> b!458695 (=> (not res!274122) (not e!267782))))

(assert (=> b!458695 (= res!274122 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14012 _keys!709))))))

(declare-fun b!458696 () Bool)

(declare-fun res!274118 () Bool)

(assert (=> b!458696 (=> (not res!274118) (not e!267782))))

(assert (=> b!458696 (= res!274118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!41140 res!274120) b!458691))

(assert (= (and b!458691 res!274126) b!458684))

(assert (= (and b!458684 res!274113) b!458696))

(assert (= (and b!458696 res!274118) b!458686))

(assert (= (and b!458686 res!274114) b!458695))

(assert (= (and b!458695 res!274122) b!458693))

(assert (= (and b!458693 res!274123) b!458690))

(assert (= (and b!458690 res!274115) b!458680))

(assert (= (and b!458680 res!274125) b!458692))

(assert (= (and b!458692 res!274121) b!458683))

(assert (= (and b!458683 res!274119) b!458688))

(assert (= (and b!458688 res!274117) b!458681))

(assert (= (and b!458681 res!274112) b!458687))

(assert (= (and b!458687 (not res!274116)) b!458689))

(assert (= (and b!458689 (not res!274124)) b!458694))

(assert (= (and b!458685 condMapEmpty!20158) mapIsEmpty!20158))

(assert (= (and b!458685 (not condMapEmpty!20158)) mapNonEmpty!20158))

(get-info :version)

(assert (= (and mapNonEmpty!20158 ((_ is ValueCellFull!5826) mapValue!20158)) b!458682))

(assert (= (and b!458685 ((_ is ValueCellFull!5826) mapDefault!20158)) b!458679))

(assert (= start!41140 b!458685))

(declare-fun b_lambda!9865 () Bool)

(assert (=> (not b_lambda!9865) (not b!458689)))

(declare-fun t!14144 () Bool)

(declare-fun tb!3845 () Bool)

(assert (=> (and start!41140 (= defaultEntry!557 defaultEntry!557) t!14144) tb!3845))

(declare-fun result!7227 () Bool)

(assert (=> tb!3845 (= result!7227 tp_is_empty!12339)))

(assert (=> b!458689 t!14144))

(declare-fun b_and!19261 () Bool)

(assert (= b_and!19259 (and (=> t!14144 result!7227) b_and!19261)))

(declare-fun m!442059 () Bool)

(assert (=> b!458689 m!442059))

(declare-fun m!442061 () Bool)

(assert (=> b!458689 m!442061))

(assert (=> b!458689 m!442061))

(assert (=> b!458689 m!442059))

(declare-fun m!442063 () Bool)

(assert (=> b!458689 m!442063))

(declare-fun m!442065 () Bool)

(assert (=> b!458689 m!442065))

(declare-fun m!442067 () Bool)

(assert (=> b!458689 m!442067))

(declare-fun m!442069 () Bool)

(assert (=> b!458686 m!442069))

(declare-fun m!442071 () Bool)

(assert (=> b!458694 m!442071))

(declare-fun m!442073 () Bool)

(assert (=> mapNonEmpty!20158 m!442073))

(declare-fun m!442075 () Bool)

(assert (=> b!458696 m!442075))

(declare-fun m!442077 () Bool)

(assert (=> b!458687 m!442077))

(assert (=> b!458687 m!442065))

(declare-fun m!442079 () Bool)

(assert (=> b!458687 m!442079))

(declare-fun m!442081 () Bool)

(assert (=> b!458687 m!442081))

(declare-fun m!442083 () Bool)

(assert (=> b!458687 m!442083))

(assert (=> b!458687 m!442065))

(declare-fun m!442085 () Bool)

(assert (=> b!458687 m!442085))

(declare-fun m!442087 () Bool)

(assert (=> b!458691 m!442087))

(declare-fun m!442089 () Bool)

(assert (=> b!458690 m!442089))

(declare-fun m!442091 () Bool)

(assert (=> b!458683 m!442091))

(declare-fun m!442093 () Bool)

(assert (=> b!458680 m!442093))

(declare-fun m!442095 () Bool)

(assert (=> b!458693 m!442095))

(declare-fun m!442097 () Bool)

(assert (=> start!41140 m!442097))

(declare-fun m!442099 () Bool)

(assert (=> start!41140 m!442099))

(declare-fun m!442101 () Bool)

(assert (=> b!458681 m!442101))

(declare-fun m!442103 () Bool)

(assert (=> b!458681 m!442103))

(declare-fun m!442105 () Bool)

(assert (=> b!458681 m!442105))

(declare-fun m!442107 () Bool)

(assert (=> b!458692 m!442107))

(declare-fun m!442109 () Bool)

(assert (=> b!458692 m!442109))

(check-sat (not b!458689) (not b!458681) (not b!458696) (not b!458683) (not b!458686) (not mapNonEmpty!20158) (not b!458691) (not b!458692) tp_is_empty!12339 (not b_lambda!9865) b_and!19261 (not b!458694) (not b!458687) (not b!458693) (not b_next!11001) (not b!458680) (not start!41140))
(check-sat b_and!19261 (not b_next!11001))
