; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39930 () Bool)

(assert start!39930)

(declare-fun b_free!10189 () Bool)

(declare-fun b_next!10189 () Bool)

(assert (=> start!39930 (= b_free!10189 (not b_next!10189))))

(declare-fun tp!36096 () Bool)

(declare-fun b_and!18055 () Bool)

(assert (=> start!39930 (= tp!36096 b_and!18055)))

(declare-fun b!432865 () Bool)

(declare-fun res!254781 () Bool)

(declare-fun e!255990 () Bool)

(assert (=> b!432865 (=> (not res!254781) (not e!255990))))

(declare-datatypes ((array!26491 0))(
  ( (array!26492 (arr!12692 (Array (_ BitVec 32) (_ BitVec 64))) (size!13044 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26491)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26491 (_ BitVec 32)) Bool)

(assert (=> b!432865 (= res!254781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432866 () Bool)

(declare-fun res!254777 () Bool)

(declare-fun e!255992 () Bool)

(assert (=> b!432866 (=> (not res!254777) (not e!255992))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432866 (= res!254777 (bvsle from!863 i!563))))

(declare-fun b!432867 () Bool)

(declare-fun res!254780 () Bool)

(assert (=> b!432867 (=> (not res!254780) (not e!255990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432867 (= res!254780 (validMask!0 mask!1025))))

(declare-fun b!432868 () Bool)

(declare-datatypes ((Unit!12761 0))(
  ( (Unit!12762) )
))
(declare-fun e!255985 () Unit!12761)

(declare-fun Unit!12763 () Unit!12761)

(assert (=> b!432868 (= e!255985 Unit!12763)))

(declare-fun mapNonEmpty!18633 () Bool)

(declare-fun mapRes!18633 () Bool)

(declare-fun tp!36095 () Bool)

(declare-fun e!255991 () Bool)

(assert (=> mapNonEmpty!18633 (= mapRes!18633 (and tp!36095 e!255991))))

(declare-datatypes ((V!16227 0))(
  ( (V!16228 (val!5715 Int)) )
))
(declare-datatypes ((ValueCell!5327 0))(
  ( (ValueCellFull!5327 (v!7958 V!16227)) (EmptyCell!5327) )
))
(declare-datatypes ((array!26493 0))(
  ( (array!26494 (arr!12693 (Array (_ BitVec 32) ValueCell!5327)) (size!13045 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26493)

(declare-fun mapValue!18633 () ValueCell!5327)

(declare-fun mapKey!18633 () (_ BitVec 32))

(declare-fun mapRest!18633 () (Array (_ BitVec 32) ValueCell!5327))

(assert (=> mapNonEmpty!18633 (= (arr!12693 _values!549) (store mapRest!18633 mapKey!18633 mapValue!18633))))

(declare-fun b!432869 () Bool)

(declare-fun tp_is_empty!11341 () Bool)

(assert (=> b!432869 (= e!255991 tp_is_empty!11341)))

(declare-fun mapIsEmpty!18633 () Bool)

(assert (=> mapIsEmpty!18633 mapRes!18633))

(declare-fun b!432870 () Bool)

(declare-fun res!254784 () Bool)

(assert (=> b!432870 (=> (not res!254784) (not e!255990))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!432870 (= res!254784 (and (= (size!13045 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13044 _keys!709) (size!13045 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432871 () Bool)

(declare-fun res!254786 () Bool)

(assert (=> b!432871 (=> (not res!254786) (not e!255990))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432871 (= res!254786 (validKeyInArray!0 k!794))))

(declare-fun b!432872 () Bool)

(declare-fun e!255988 () Bool)

(declare-fun e!255986 () Bool)

(assert (=> b!432872 (= e!255988 (not e!255986))))

(declare-fun res!254783 () Bool)

(assert (=> b!432872 (=> res!254783 e!255986)))

(assert (=> b!432872 (= res!254783 (not (validKeyInArray!0 (select (arr!12692 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7482 0))(
  ( (tuple2!7483 (_1!3751 (_ BitVec 64)) (_2!3751 V!16227)) )
))
(declare-datatypes ((List!7532 0))(
  ( (Nil!7529) (Cons!7528 (h!8384 tuple2!7482) (t!13178 List!7532)) )
))
(declare-datatypes ((ListLongMap!6409 0))(
  ( (ListLongMap!6410 (toList!3220 List!7532)) )
))
(declare-fun lt!198732 () ListLongMap!6409)

(declare-fun lt!198730 () ListLongMap!6409)

(assert (=> b!432872 (= lt!198732 lt!198730)))

(declare-fun lt!198726 () ListLongMap!6409)

(declare-fun lt!198729 () tuple2!7482)

(declare-fun +!1366 (ListLongMap!6409 tuple2!7482) ListLongMap!6409)

(assert (=> b!432872 (= lt!198730 (+!1366 lt!198726 lt!198729))))

(declare-fun minValue!515 () V!16227)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16227)

(declare-fun lt!198731 () array!26493)

(declare-fun lt!198720 () array!26491)

(declare-fun getCurrentListMapNoExtraKeys!1410 (array!26491 array!26493 (_ BitVec 32) (_ BitVec 32) V!16227 V!16227 (_ BitVec 32) Int) ListLongMap!6409)

(assert (=> b!432872 (= lt!198732 (getCurrentListMapNoExtraKeys!1410 lt!198720 lt!198731 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16227)

(assert (=> b!432872 (= lt!198729 (tuple2!7483 k!794 v!412))))

(assert (=> b!432872 (= lt!198726 (getCurrentListMapNoExtraKeys!1410 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198728 () Unit!12761)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!554 (array!26491 array!26493 (_ BitVec 32) (_ BitVec 32) V!16227 V!16227 (_ BitVec 32) (_ BitVec 64) V!16227 (_ BitVec 32) Int) Unit!12761)

(assert (=> b!432872 (= lt!198728 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!554 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!254789 () Bool)

(assert (=> start!39930 (=> (not res!254789) (not e!255990))))

(assert (=> start!39930 (= res!254789 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13044 _keys!709))))))

(assert (=> start!39930 e!255990))

(assert (=> start!39930 tp_is_empty!11341))

(assert (=> start!39930 tp!36096))

(assert (=> start!39930 true))

(declare-fun e!255993 () Bool)

(declare-fun array_inv!9228 (array!26493) Bool)

(assert (=> start!39930 (and (array_inv!9228 _values!549) e!255993)))

(declare-fun array_inv!9229 (array!26491) Bool)

(assert (=> start!39930 (array_inv!9229 _keys!709)))

(declare-fun b!432873 () Bool)

(declare-fun Unit!12764 () Unit!12761)

(assert (=> b!432873 (= e!255985 Unit!12764)))

(declare-fun lt!198725 () Unit!12761)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26491 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12761)

(assert (=> b!432873 (= lt!198725 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432873 false))

(declare-fun b!432874 () Bool)

(declare-fun e!255987 () Bool)

(assert (=> b!432874 (= e!255987 tp_is_empty!11341)))

(declare-fun b!432875 () Bool)

(declare-fun res!254782 () Bool)

(assert (=> b!432875 (=> (not res!254782) (not e!255990))))

(assert (=> b!432875 (= res!254782 (or (= (select (arr!12692 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12692 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432876 () Bool)

(declare-fun res!254790 () Bool)

(assert (=> b!432876 (=> (not res!254790) (not e!255992))))

(declare-datatypes ((List!7533 0))(
  ( (Nil!7530) (Cons!7529 (h!8385 (_ BitVec 64)) (t!13179 List!7533)) )
))
(declare-fun arrayNoDuplicates!0 (array!26491 (_ BitVec 32) List!7533) Bool)

(assert (=> b!432876 (= res!254790 (arrayNoDuplicates!0 lt!198720 #b00000000000000000000000000000000 Nil!7530))))

(declare-fun b!432877 () Bool)

(declare-fun res!254779 () Bool)

(assert (=> b!432877 (=> (not res!254779) (not e!255990))))

(assert (=> b!432877 (= res!254779 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13044 _keys!709))))))

(declare-fun b!432878 () Bool)

(assert (=> b!432878 (= e!255992 e!255988)))

(declare-fun res!254788 () Bool)

(assert (=> b!432878 (=> (not res!254788) (not e!255988))))

(assert (=> b!432878 (= res!254788 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!198723 () ListLongMap!6409)

(assert (=> b!432878 (= lt!198723 (getCurrentListMapNoExtraKeys!1410 lt!198720 lt!198731 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!432878 (= lt!198731 (array!26494 (store (arr!12693 _values!549) i!563 (ValueCellFull!5327 v!412)) (size!13045 _values!549)))))

(declare-fun lt!198724 () ListLongMap!6409)

(assert (=> b!432878 (= lt!198724 (getCurrentListMapNoExtraKeys!1410 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!432879 () Bool)

(declare-fun e!255989 () Bool)

(assert (=> b!432879 (= e!255989 true)))

(declare-fun lt!198719 () tuple2!7482)

(declare-fun lt!198721 () ListLongMap!6409)

(assert (=> b!432879 (= lt!198721 (+!1366 (+!1366 lt!198726 lt!198719) lt!198729))))

(declare-fun lt!198718 () V!16227)

(declare-fun lt!198722 () Unit!12761)

(declare-fun addCommutativeForDiffKeys!376 (ListLongMap!6409 (_ BitVec 64) V!16227 (_ BitVec 64) V!16227) Unit!12761)

(assert (=> b!432879 (= lt!198722 (addCommutativeForDiffKeys!376 lt!198726 k!794 v!412 (select (arr!12692 _keys!709) from!863) lt!198718))))

(declare-fun b!432880 () Bool)

(declare-fun res!254776 () Bool)

(assert (=> b!432880 (=> (not res!254776) (not e!255990))))

(assert (=> b!432880 (= res!254776 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7530))))

(declare-fun b!432881 () Bool)

(assert (=> b!432881 (= e!255993 (and e!255987 mapRes!18633))))

(declare-fun condMapEmpty!18633 () Bool)

(declare-fun mapDefault!18633 () ValueCell!5327)

