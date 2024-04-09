; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40276 () Bool)

(assert start!40276)

(declare-fun b_free!10529 () Bool)

(declare-fun b_next!10529 () Bool)

(assert (=> start!40276 (= b_free!10529 (not b_next!10529))))

(declare-fun tp!37124 () Bool)

(declare-fun b_and!18515 () Bool)

(assert (=> start!40276 (= tp!37124 b_and!18515)))

(declare-fun b!441990 () Bool)

(declare-fun res!261852 () Bool)

(declare-fun e!260156 () Bool)

(assert (=> b!441990 (=> (not res!261852) (not e!260156))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441990 (= res!261852 (validKeyInArray!0 k!794))))

(declare-fun b!441991 () Bool)

(declare-fun res!261861 () Bool)

(declare-fun e!260157 () Bool)

(assert (=> b!441991 (=> (not res!261861) (not e!260157))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441991 (= res!261861 (bvsle from!863 i!563))))

(declare-fun b!441992 () Bool)

(declare-fun e!260153 () Bool)

(declare-datatypes ((V!16687 0))(
  ( (V!16688 (val!5888 Int)) )
))
(declare-datatypes ((tuple2!7758 0))(
  ( (tuple2!7759 (_1!3889 (_ BitVec 64)) (_2!3889 V!16687)) )
))
(declare-datatypes ((List!7800 0))(
  ( (Nil!7797) (Cons!7796 (h!8652 tuple2!7758) (t!13564 List!7800)) )
))
(declare-datatypes ((ListLongMap!6685 0))(
  ( (ListLongMap!6686 (toList!3358 List!7800)) )
))
(declare-fun call!29531 () ListLongMap!6685)

(declare-fun call!29530 () ListLongMap!6685)

(assert (=> b!441992 (= e!260153 (= call!29531 call!29530))))

(declare-fun b!441994 () Bool)

(declare-fun res!261856 () Bool)

(assert (=> b!441994 (=> (not res!261856) (not e!260156))))

(declare-datatypes ((array!27161 0))(
  ( (array!27162 (arr!13027 (Array (_ BitVec 32) (_ BitVec 64))) (size!13379 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27161)

(assert (=> b!441994 (= res!261856 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13379 _keys!709))))))

(declare-fun mapIsEmpty!19152 () Bool)

(declare-fun mapRes!19152 () Bool)

(assert (=> mapIsEmpty!19152 mapRes!19152))

(declare-fun b!441995 () Bool)

(declare-fun res!261863 () Bool)

(assert (=> b!441995 (=> (not res!261863) (not e!260156))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5500 0))(
  ( (ValueCellFull!5500 (v!8131 V!16687)) (EmptyCell!5500) )
))
(declare-datatypes ((array!27163 0))(
  ( (array!27164 (arr!13028 (Array (_ BitVec 32) ValueCell!5500)) (size!13380 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27163)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!441995 (= res!261863 (and (= (size!13380 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13379 _keys!709) (size!13380 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441996 () Bool)

(declare-fun v!412 () V!16687)

(declare-fun +!1491 (ListLongMap!6685 tuple2!7758) ListLongMap!6685)

(assert (=> b!441996 (= e!260153 (= call!29530 (+!1491 call!29531 (tuple2!7759 k!794 v!412))))))

(declare-fun b!441997 () Bool)

(declare-fun res!261859 () Bool)

(assert (=> b!441997 (=> (not res!261859) (not e!260157))))

(declare-fun lt!203069 () array!27161)

(declare-datatypes ((List!7801 0))(
  ( (Nil!7798) (Cons!7797 (h!8653 (_ BitVec 64)) (t!13565 List!7801)) )
))
(declare-fun arrayNoDuplicates!0 (array!27161 (_ BitVec 32) List!7801) Bool)

(assert (=> b!441997 (= res!261859 (arrayNoDuplicates!0 lt!203069 #b00000000000000000000000000000000 Nil!7798))))

(declare-fun b!441998 () Bool)

(declare-fun e!260151 () Bool)

(assert (=> b!441998 (= e!260151 (not (not (validKeyInArray!0 (select (arr!13027 _keys!709) from!863)))))))

(assert (=> b!441998 e!260153))

(declare-fun c!55730 () Bool)

(assert (=> b!441998 (= c!55730 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!16687)

(declare-fun zeroValue!515 () V!16687)

(declare-datatypes ((Unit!13095 0))(
  ( (Unit!13096) )
))
(declare-fun lt!203067 () Unit!13095)

(declare-fun defaultEntry!557 () Int)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!668 (array!27161 array!27163 (_ BitVec 32) (_ BitVec 32) V!16687 V!16687 (_ BitVec 32) (_ BitVec 64) V!16687 (_ BitVec 32) Int) Unit!13095)

(assert (=> b!441998 (= lt!203067 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!668 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441999 () Bool)

(assert (=> b!441999 (= e!260156 e!260157)))

(declare-fun res!261862 () Bool)

(assert (=> b!441999 (=> (not res!261862) (not e!260157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27161 (_ BitVec 32)) Bool)

(assert (=> b!441999 (= res!261862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203069 mask!1025))))

(assert (=> b!441999 (= lt!203069 (array!27162 (store (arr!13027 _keys!709) i!563 k!794) (size!13379 _keys!709)))))

(declare-fun b!442000 () Bool)

(declare-fun e!260158 () Bool)

(declare-fun tp_is_empty!11687 () Bool)

(assert (=> b!442000 (= e!260158 tp_is_empty!11687)))

(declare-fun b!442001 () Bool)

(assert (=> b!442001 (= e!260157 e!260151)))

(declare-fun res!261858 () Bool)

(assert (=> b!442001 (=> (not res!261858) (not e!260151))))

(assert (=> b!442001 (= res!261858 (= from!863 i!563))))

(declare-fun lt!203068 () ListLongMap!6685)

(declare-fun lt!203066 () array!27163)

(declare-fun getCurrentListMapNoExtraKeys!1540 (array!27161 array!27163 (_ BitVec 32) (_ BitVec 32) V!16687 V!16687 (_ BitVec 32) Int) ListLongMap!6685)

(assert (=> b!442001 (= lt!203068 (getCurrentListMapNoExtraKeys!1540 lt!203069 lt!203066 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!442001 (= lt!203066 (array!27164 (store (arr!13028 _values!549) i!563 (ValueCellFull!5500 v!412)) (size!13380 _values!549)))))

(declare-fun lt!203070 () ListLongMap!6685)

(assert (=> b!442001 (= lt!203070 (getCurrentListMapNoExtraKeys!1540 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19152 () Bool)

(declare-fun tp!37125 () Bool)

(assert (=> mapNonEmpty!19152 (= mapRes!19152 (and tp!37125 e!260158))))

(declare-fun mapValue!19152 () ValueCell!5500)

(declare-fun mapRest!19152 () (Array (_ BitVec 32) ValueCell!5500))

(declare-fun mapKey!19152 () (_ BitVec 32))

(assert (=> mapNonEmpty!19152 (= (arr!13028 _values!549) (store mapRest!19152 mapKey!19152 mapValue!19152))))

(declare-fun res!261854 () Bool)

(assert (=> start!40276 (=> (not res!261854) (not e!260156))))

(assert (=> start!40276 (= res!261854 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13379 _keys!709))))))

(assert (=> start!40276 e!260156))

(assert (=> start!40276 tp_is_empty!11687))

(assert (=> start!40276 tp!37124))

(assert (=> start!40276 true))

(declare-fun e!260154 () Bool)

(declare-fun array_inv!9446 (array!27163) Bool)

(assert (=> start!40276 (and (array_inv!9446 _values!549) e!260154)))

(declare-fun array_inv!9447 (array!27161) Bool)

(assert (=> start!40276 (array_inv!9447 _keys!709)))

(declare-fun b!441993 () Bool)

(declare-fun res!261853 () Bool)

(assert (=> b!441993 (=> (not res!261853) (not e!260156))))

(declare-fun arrayContainsKey!0 (array!27161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441993 (= res!261853 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!442002 () Bool)

(declare-fun e!260152 () Bool)

(assert (=> b!442002 (= e!260154 (and e!260152 mapRes!19152))))

(declare-fun condMapEmpty!19152 () Bool)

(declare-fun mapDefault!19152 () ValueCell!5500)

