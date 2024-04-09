; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39978 () Bool)

(assert start!39978)

(declare-fun b_free!10237 () Bool)

(declare-fun b_next!10237 () Bool)

(assert (=> start!39978 (= b_free!10237 (not b_next!10237))))

(declare-fun tp!36240 () Bool)

(declare-fun b_and!18151 () Bool)

(assert (=> start!39978 (= tp!36240 b_and!18151)))

(declare-fun mapNonEmpty!18705 () Bool)

(declare-fun mapRes!18705 () Bool)

(declare-fun tp!36239 () Bool)

(declare-fun e!256707 () Bool)

(assert (=> mapNonEmpty!18705 (= mapRes!18705 (and tp!36239 e!256707))))

(declare-fun mapKey!18705 () (_ BitVec 32))

(declare-datatypes ((V!16291 0))(
  ( (V!16292 (val!5739 Int)) )
))
(declare-datatypes ((ValueCell!5351 0))(
  ( (ValueCellFull!5351 (v!7982 V!16291)) (EmptyCell!5351) )
))
(declare-fun mapValue!18705 () ValueCell!5351)

(declare-datatypes ((array!26585 0))(
  ( (array!26586 (arr!12739 (Array (_ BitVec 32) ValueCell!5351)) (size!13091 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26585)

(declare-fun mapRest!18705 () (Array (_ BitVec 32) ValueCell!5351))

(assert (=> mapNonEmpty!18705 (= (arr!12739 _values!549) (store mapRest!18705 mapKey!18705 mapValue!18705))))

(declare-fun b!434353 () Bool)

(declare-fun res!255865 () Bool)

(declare-fun e!256714 () Bool)

(assert (=> b!434353 (=> (not res!255865) (not e!256714))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434353 (= res!255865 (validKeyInArray!0 k!794))))

(declare-fun b!434354 () Bool)

(declare-fun res!255859 () Bool)

(assert (=> b!434354 (=> (not res!255859) (not e!256714))))

(declare-datatypes ((array!26587 0))(
  ( (array!26588 (arr!12740 (Array (_ BitVec 32) (_ BitVec 64))) (size!13092 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26587)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!434354 (= res!255859 (and (= (size!13091 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13092 _keys!709) (size!13091 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434355 () Bool)

(declare-fun e!256709 () Bool)

(declare-fun e!256712 () Bool)

(assert (=> b!434355 (= e!256709 e!256712)))

(declare-fun res!255869 () Bool)

(assert (=> b!434355 (=> (not res!255869) (not e!256712))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434355 (= res!255869 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16291)

(declare-fun zeroValue!515 () V!16291)

(declare-datatypes ((tuple2!7524 0))(
  ( (tuple2!7525 (_1!3772 (_ BitVec 64)) (_2!3772 V!16291)) )
))
(declare-datatypes ((List!7572 0))(
  ( (Nil!7569) (Cons!7568 (h!8424 tuple2!7524) (t!13266 List!7572)) )
))
(declare-datatypes ((ListLongMap!6451 0))(
  ( (ListLongMap!6452 (toList!3241 List!7572)) )
))
(declare-fun lt!199811 () ListLongMap!6451)

(declare-fun lt!199798 () array!26587)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!199801 () array!26585)

(declare-fun getCurrentListMapNoExtraKeys!1428 (array!26587 array!26585 (_ BitVec 32) (_ BitVec 32) V!16291 V!16291 (_ BitVec 32) Int) ListLongMap!6451)

(assert (=> b!434355 (= lt!199811 (getCurrentListMapNoExtraKeys!1428 lt!199798 lt!199801 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16291)

(assert (=> b!434355 (= lt!199801 (array!26586 (store (arr!12739 _values!549) i!563 (ValueCellFull!5351 v!412)) (size!13091 _values!549)))))

(declare-fun lt!199805 () ListLongMap!6451)

(assert (=> b!434355 (= lt!199805 (getCurrentListMapNoExtraKeys!1428 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434356 () Bool)

(declare-fun tp_is_empty!11389 () Bool)

(assert (=> b!434356 (= e!256707 tp_is_empty!11389)))

(declare-fun b!434357 () Bool)

(declare-fun e!256713 () Bool)

(declare-fun e!256711 () Bool)

(assert (=> b!434357 (= e!256713 e!256711)))

(declare-fun res!255857 () Bool)

(assert (=> b!434357 (=> res!255857 e!256711)))

(assert (=> b!434357 (= res!255857 (= k!794 (select (arr!12740 _keys!709) from!863)))))

(assert (=> b!434357 (not (= (select (arr!12740 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12839 0))(
  ( (Unit!12840) )
))
(declare-fun lt!199802 () Unit!12839)

(declare-fun e!256705 () Unit!12839)

(assert (=> b!434357 (= lt!199802 e!256705)))

(declare-fun c!55616 () Bool)

(assert (=> b!434357 (= c!55616 (= (select (arr!12740 _keys!709) from!863) k!794))))

(declare-fun lt!199807 () ListLongMap!6451)

(assert (=> b!434357 (= lt!199811 lt!199807)))

(declare-fun lt!199804 () ListLongMap!6451)

(declare-fun lt!199808 () tuple2!7524)

(declare-fun +!1386 (ListLongMap!6451 tuple2!7524) ListLongMap!6451)

(assert (=> b!434357 (= lt!199807 (+!1386 lt!199804 lt!199808))))

(declare-fun lt!199810 () V!16291)

(assert (=> b!434357 (= lt!199808 (tuple2!7525 (select (arr!12740 _keys!709) from!863) lt!199810))))

(declare-fun get!6351 (ValueCell!5351 V!16291) V!16291)

(declare-fun dynLambda!818 (Int (_ BitVec 64)) V!16291)

(assert (=> b!434357 (= lt!199810 (get!6351 (select (arr!12739 _values!549) from!863) (dynLambda!818 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434358 () Bool)

(declare-fun Unit!12841 () Unit!12839)

(assert (=> b!434358 (= e!256705 Unit!12841)))

(declare-fun b!434359 () Bool)

(declare-fun res!255867 () Bool)

(assert (=> b!434359 (=> (not res!255867) (not e!256714))))

(declare-datatypes ((List!7573 0))(
  ( (Nil!7570) (Cons!7569 (h!8425 (_ BitVec 64)) (t!13267 List!7573)) )
))
(declare-fun arrayNoDuplicates!0 (array!26587 (_ BitVec 32) List!7573) Bool)

(assert (=> b!434359 (= res!255867 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7570))))

(declare-fun b!434360 () Bool)

(declare-fun res!255858 () Bool)

(assert (=> b!434360 (=> (not res!255858) (not e!256714))))

(assert (=> b!434360 (= res!255858 (or (= (select (arr!12740 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12740 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434361 () Bool)

(declare-fun res!255868 () Bool)

(assert (=> b!434361 (=> (not res!255868) (not e!256714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434361 (= res!255868 (validMask!0 mask!1025))))

(declare-fun b!434362 () Bool)

(declare-fun res!255870 () Bool)

(assert (=> b!434362 (=> (not res!255870) (not e!256714))))

(declare-fun arrayContainsKey!0 (array!26587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434362 (= res!255870 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!434363 () Bool)

(declare-fun res!255866 () Bool)

(assert (=> b!434363 (=> (not res!255866) (not e!256709))))

(assert (=> b!434363 (= res!255866 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18705 () Bool)

(assert (=> mapIsEmpty!18705 mapRes!18705))

(declare-fun res!255861 () Bool)

(assert (=> start!39978 (=> (not res!255861) (not e!256714))))

(assert (=> start!39978 (= res!255861 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13092 _keys!709))))))

(assert (=> start!39978 e!256714))

(assert (=> start!39978 tp_is_empty!11389))

(assert (=> start!39978 tp!36240))

(assert (=> start!39978 true))

(declare-fun e!256706 () Bool)

(declare-fun array_inv!9262 (array!26585) Bool)

(assert (=> start!39978 (and (array_inv!9262 _values!549) e!256706)))

(declare-fun array_inv!9263 (array!26587) Bool)

(assert (=> start!39978 (array_inv!9263 _keys!709)))

(declare-fun b!434364 () Bool)

(declare-fun res!255860 () Bool)

(assert (=> b!434364 (=> (not res!255860) (not e!256714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26587 (_ BitVec 32)) Bool)

(assert (=> b!434364 (= res!255860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434365 () Bool)

(declare-fun Unit!12842 () Unit!12839)

(assert (=> b!434365 (= e!256705 Unit!12842)))

(declare-fun lt!199812 () Unit!12839)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26587 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12839)

(assert (=> b!434365 (= lt!199812 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434365 false))

(declare-fun b!434366 () Bool)

(declare-fun e!256708 () Bool)

(assert (=> b!434366 (= e!256706 (and e!256708 mapRes!18705))))

(declare-fun condMapEmpty!18705 () Bool)

(declare-fun mapDefault!18705 () ValueCell!5351)

