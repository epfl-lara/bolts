; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40670 () Bool)

(assert start!40670)

(declare-fun b_free!10673 () Bool)

(declare-fun b_next!10673 () Bool)

(assert (=> start!40670 (= b_free!10673 (not b_next!10673))))

(declare-fun tp!37838 () Bool)

(declare-fun b_and!18699 () Bool)

(assert (=> start!40670 (= tp!37838 b_and!18699)))

(declare-fun b!449117 () Bool)

(declare-fun res!267188 () Bool)

(declare-fun e!263372 () Bool)

(assert (=> b!449117 (=> (not res!267188) (not e!263372))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449117 (= res!267188 (bvsle from!863 i!563))))

(declare-fun b!449118 () Bool)

(declare-fun res!267196 () Bool)

(declare-fun e!263368 () Bool)

(assert (=> b!449118 (=> (not res!267196) (not e!263368))))

(declare-datatypes ((array!27789 0))(
  ( (array!27790 (arr!13337 (Array (_ BitVec 32) (_ BitVec 64))) (size!13689 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27789)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17119 0))(
  ( (V!17120 (val!6050 Int)) )
))
(declare-datatypes ((ValueCell!5662 0))(
  ( (ValueCellFull!5662 (v!8301 V!17119)) (EmptyCell!5662) )
))
(declare-datatypes ((array!27791 0))(
  ( (array!27792 (arr!13338 (Array (_ BitVec 32) ValueCell!5662)) (size!13690 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27791)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!449118 (= res!267196 (and (= (size!13690 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13689 _keys!709) (size!13690 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449119 () Bool)

(declare-fun res!267191 () Bool)

(assert (=> b!449119 (=> (not res!267191) (not e!263368))))

(assert (=> b!449119 (= res!267191 (or (= (select (arr!13337 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13337 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19650 () Bool)

(declare-fun mapRes!19650 () Bool)

(assert (=> mapIsEmpty!19650 mapRes!19650))

(declare-fun b!449120 () Bool)

(declare-fun res!267192 () Bool)

(assert (=> b!449120 (=> (not res!267192) (not e!263368))))

(declare-datatypes ((List!7988 0))(
  ( (Nil!7985) (Cons!7984 (h!8840 (_ BitVec 64)) (t!13758 List!7988)) )
))
(declare-fun arrayNoDuplicates!0 (array!27789 (_ BitVec 32) List!7988) Bool)

(assert (=> b!449120 (= res!267192 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7985))))

(declare-fun b!449121 () Bool)

(declare-fun e!263370 () Bool)

(declare-fun tp_is_empty!12011 () Bool)

(assert (=> b!449121 (= e!263370 tp_is_empty!12011)))

(declare-fun b!449122 () Bool)

(declare-fun res!267189 () Bool)

(assert (=> b!449122 (=> (not res!267189) (not e!263372))))

(declare-fun lt!204304 () array!27789)

(assert (=> b!449122 (= res!267189 (arrayNoDuplicates!0 lt!204304 #b00000000000000000000000000000000 Nil!7985))))

(declare-fun b!449123 () Bool)

(assert (=> b!449123 (= e!263372 false)))

(declare-fun minValue!515 () V!17119)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7878 0))(
  ( (tuple2!7879 (_1!3949 (_ BitVec 64)) (_2!3949 V!17119)) )
))
(declare-datatypes ((List!7989 0))(
  ( (Nil!7986) (Cons!7985 (h!8841 tuple2!7878) (t!13759 List!7989)) )
))
(declare-datatypes ((ListLongMap!6805 0))(
  ( (ListLongMap!6806 (toList!3418 List!7989)) )
))
(declare-fun lt!204303 () ListLongMap!6805)

(declare-fun zeroValue!515 () V!17119)

(declare-fun v!412 () V!17119)

(declare-fun getCurrentListMapNoExtraKeys!1598 (array!27789 array!27791 (_ BitVec 32) (_ BitVec 32) V!17119 V!17119 (_ BitVec 32) Int) ListLongMap!6805)

(assert (=> b!449123 (= lt!204303 (getCurrentListMapNoExtraKeys!1598 lt!204304 (array!27792 (store (arr!13338 _values!549) i!563 (ValueCellFull!5662 v!412)) (size!13690 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204302 () ListLongMap!6805)

(assert (=> b!449123 (= lt!204302 (getCurrentListMapNoExtraKeys!1598 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449124 () Bool)

(declare-fun e!263373 () Bool)

(assert (=> b!449124 (= e!263373 tp_is_empty!12011)))

(declare-fun b!449125 () Bool)

(declare-fun res!267198 () Bool)

(assert (=> b!449125 (=> (not res!267198) (not e!263368))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449125 (= res!267198 (validKeyInArray!0 k!794))))

(declare-fun b!449126 () Bool)

(assert (=> b!449126 (= e!263368 e!263372)))

(declare-fun res!267197 () Bool)

(assert (=> b!449126 (=> (not res!267197) (not e!263372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27789 (_ BitVec 32)) Bool)

(assert (=> b!449126 (= res!267197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204304 mask!1025))))

(assert (=> b!449126 (= lt!204304 (array!27790 (store (arr!13337 _keys!709) i!563 k!794) (size!13689 _keys!709)))))

(declare-fun mapNonEmpty!19650 () Bool)

(declare-fun tp!37839 () Bool)

(assert (=> mapNonEmpty!19650 (= mapRes!19650 (and tp!37839 e!263370))))

(declare-fun mapKey!19650 () (_ BitVec 32))

(declare-fun mapValue!19650 () ValueCell!5662)

(declare-fun mapRest!19650 () (Array (_ BitVec 32) ValueCell!5662))

(assert (=> mapNonEmpty!19650 (= (arr!13338 _values!549) (store mapRest!19650 mapKey!19650 mapValue!19650))))

(declare-fun b!449127 () Bool)

(declare-fun res!267187 () Bool)

(assert (=> b!449127 (=> (not res!267187) (not e!263368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449127 (= res!267187 (validMask!0 mask!1025))))

(declare-fun b!449128 () Bool)

(declare-fun e!263371 () Bool)

(assert (=> b!449128 (= e!263371 (and e!263373 mapRes!19650))))

(declare-fun condMapEmpty!19650 () Bool)

(declare-fun mapDefault!19650 () ValueCell!5662)

