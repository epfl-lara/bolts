; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39348 () Bool)

(assert start!39348)

(declare-fun b_free!9607 () Bool)

(declare-fun b_next!9607 () Bool)

(assert (=> start!39348 (= b_free!9607 (not b_next!9607))))

(declare-fun tp!34349 () Bool)

(declare-fun b_and!17107 () Bool)

(assert (=> start!39348 (= tp!34349 b_and!17107)))

(declare-fun b!416999 () Bool)

(declare-fun res!242886 () Bool)

(declare-fun e!248843 () Bool)

(assert (=> b!416999 (=> (not res!242886) (not e!248843))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416999 (= res!242886 (validKeyInArray!0 k!794))))

(declare-fun b!417000 () Bool)

(declare-fun res!242894 () Bool)

(assert (=> b!417000 (=> (not res!242894) (not e!248843))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25353 0))(
  ( (array!25354 (arr!12123 (Array (_ BitVec 32) (_ BitVec 64))) (size!12475 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25353)

(assert (=> b!417000 (= res!242894 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12475 _keys!709))))))

(declare-fun mapIsEmpty!17760 () Bool)

(declare-fun mapRes!17760 () Bool)

(assert (=> mapIsEmpty!17760 mapRes!17760))

(declare-fun b!417001 () Bool)

(declare-fun res!242889 () Bool)

(assert (=> b!417001 (=> (not res!242889) (not e!248843))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15451 0))(
  ( (V!15452 (val!5424 Int)) )
))
(declare-datatypes ((ValueCell!5036 0))(
  ( (ValueCellFull!5036 (v!7667 V!15451)) (EmptyCell!5036) )
))
(declare-datatypes ((array!25355 0))(
  ( (array!25356 (arr!12124 (Array (_ BitVec 32) ValueCell!5036)) (size!12476 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25355)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!417001 (= res!242889 (and (= (size!12476 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12475 _keys!709) (size!12476 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!242888 () Bool)

(assert (=> start!39348 (=> (not res!242888) (not e!248843))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39348 (= res!242888 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12475 _keys!709))))))

(assert (=> start!39348 e!248843))

(declare-fun tp_is_empty!10759 () Bool)

(assert (=> start!39348 tp_is_empty!10759))

(assert (=> start!39348 tp!34349))

(assert (=> start!39348 true))

(declare-fun e!248838 () Bool)

(declare-fun array_inv!8840 (array!25355) Bool)

(assert (=> start!39348 (and (array_inv!8840 _values!549) e!248838)))

(declare-fun array_inv!8841 (array!25353) Bool)

(assert (=> start!39348 (array_inv!8841 _keys!709)))

(declare-fun b!417002 () Bool)

(declare-fun e!248845 () Bool)

(declare-fun e!248837 () Bool)

(assert (=> b!417002 (= e!248845 (not e!248837))))

(declare-fun res!242895 () Bool)

(assert (=> b!417002 (=> res!242895 e!248837)))

(assert (=> b!417002 (= res!242895 (validKeyInArray!0 (select (arr!12123 _keys!709) from!863)))))

(declare-fun e!248841 () Bool)

(assert (=> b!417002 e!248841))

(declare-fun c!55049 () Bool)

(assert (=> b!417002 (= c!55049 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15451)

(declare-fun v!412 () V!15451)

(declare-datatypes ((Unit!12289 0))(
  ( (Unit!12290) )
))
(declare-fun lt!191055 () Unit!12289)

(declare-fun minValue!515 () V!15451)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!405 (array!25353 array!25355 (_ BitVec 32) (_ BitVec 32) V!15451 V!15451 (_ BitVec 32) (_ BitVec 64) V!15451 (_ BitVec 32) Int) Unit!12289)

(assert (=> b!417002 (= lt!191055 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!405 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417003 () Bool)

(declare-fun res!242896 () Bool)

(assert (=> b!417003 (=> (not res!242896) (not e!248843))))

(assert (=> b!417003 (= res!242896 (or (= (select (arr!12123 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12123 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417004 () Bool)

(declare-fun e!248842 () Bool)

(assert (=> b!417004 (= e!248842 tp_is_empty!10759)))

(declare-fun bm!28993 () Bool)

(declare-datatypes ((tuple2!7008 0))(
  ( (tuple2!7009 (_1!3514 (_ BitVec 64)) (_2!3514 V!15451)) )
))
(declare-datatypes ((List!7060 0))(
  ( (Nil!7057) (Cons!7056 (h!7912 tuple2!7008) (t!12340 List!7060)) )
))
(declare-datatypes ((ListLongMap!5935 0))(
  ( (ListLongMap!5936 (toList!2983 List!7060)) )
))
(declare-fun call!28996 () ListLongMap!5935)

(declare-fun lt!191053 () array!25355)

(declare-fun lt!191056 () array!25353)

(declare-fun getCurrentListMapNoExtraKeys!1186 (array!25353 array!25355 (_ BitVec 32) (_ BitVec 32) V!15451 V!15451 (_ BitVec 32) Int) ListLongMap!5935)

(assert (=> bm!28993 (= call!28996 (getCurrentListMapNoExtraKeys!1186 (ite c!55049 _keys!709 lt!191056) (ite c!55049 _values!549 lt!191053) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417005 () Bool)

(declare-fun res!242885 () Bool)

(declare-fun e!248844 () Bool)

(assert (=> b!417005 (=> (not res!242885) (not e!248844))))

(assert (=> b!417005 (= res!242885 (bvsle from!863 i!563))))

(declare-fun b!417006 () Bool)

(declare-fun res!242887 () Bool)

(assert (=> b!417006 (=> (not res!242887) (not e!248843))))

(declare-fun arrayContainsKey!0 (array!25353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417006 (= res!242887 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!417007 () Bool)

(assert (=> b!417007 (= e!248844 e!248845)))

(declare-fun res!242898 () Bool)

(assert (=> b!417007 (=> (not res!242898) (not e!248845))))

(assert (=> b!417007 (= res!242898 (= from!863 i!563))))

(declare-fun lt!191061 () ListLongMap!5935)

(assert (=> b!417007 (= lt!191061 (getCurrentListMapNoExtraKeys!1186 lt!191056 lt!191053 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417007 (= lt!191053 (array!25356 (store (arr!12124 _values!549) i!563 (ValueCellFull!5036 v!412)) (size!12476 _values!549)))))

(declare-fun lt!191060 () ListLongMap!5935)

(assert (=> b!417007 (= lt!191060 (getCurrentListMapNoExtraKeys!1186 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!417008 () Bool)

(declare-fun res!242892 () Bool)

(assert (=> b!417008 (=> (not res!242892) (not e!248843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25353 (_ BitVec 32)) Bool)

(assert (=> b!417008 (= res!242892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!417009 () Bool)

(declare-fun res!242891 () Bool)

(assert (=> b!417009 (=> (not res!242891) (not e!248843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417009 (= res!242891 (validMask!0 mask!1025))))

(declare-fun b!417010 () Bool)

(declare-fun res!242897 () Bool)

(assert (=> b!417010 (=> (not res!242897) (not e!248843))))

(declare-datatypes ((List!7061 0))(
  ( (Nil!7058) (Cons!7057 (h!7913 (_ BitVec 64)) (t!12341 List!7061)) )
))
(declare-fun arrayNoDuplicates!0 (array!25353 (_ BitVec 32) List!7061) Bool)

(assert (=> b!417010 (= res!242897 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7058))))

(declare-fun call!28997 () ListLongMap!5935)

(declare-fun bm!28994 () Bool)

(assert (=> bm!28994 (= call!28997 (getCurrentListMapNoExtraKeys!1186 (ite c!55049 lt!191056 _keys!709) (ite c!55049 lt!191053 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17760 () Bool)

(declare-fun tp!34350 () Bool)

(declare-fun e!248839 () Bool)

(assert (=> mapNonEmpty!17760 (= mapRes!17760 (and tp!34350 e!248839))))

(declare-fun mapKey!17760 () (_ BitVec 32))

(declare-fun mapValue!17760 () ValueCell!5036)

(declare-fun mapRest!17760 () (Array (_ BitVec 32) ValueCell!5036))

(assert (=> mapNonEmpty!17760 (= (arr!12124 _values!549) (store mapRest!17760 mapKey!17760 mapValue!17760))))

(declare-fun b!417011 () Bool)

(declare-fun res!242893 () Bool)

(assert (=> b!417011 (=> (not res!242893) (not e!248844))))

(assert (=> b!417011 (= res!242893 (arrayNoDuplicates!0 lt!191056 #b00000000000000000000000000000000 Nil!7058))))

(declare-fun b!417012 () Bool)

(assert (=> b!417012 (= e!248841 (= call!28996 call!28997))))

(declare-fun b!417013 () Bool)

(assert (=> b!417013 (= e!248837 true)))

(declare-fun lt!191058 () tuple2!7008)

(declare-fun lt!191054 () V!15451)

(declare-fun lt!191052 () ListLongMap!5935)

(declare-fun +!1194 (ListLongMap!5935 tuple2!7008) ListLongMap!5935)

(assert (=> b!417013 (= (+!1194 lt!191052 lt!191058) (+!1194 (+!1194 lt!191052 (tuple2!7009 k!794 lt!191054)) lt!191058))))

(declare-fun lt!191059 () V!15451)

(assert (=> b!417013 (= lt!191058 (tuple2!7009 k!794 lt!191059))))

(declare-fun lt!191057 () Unit!12289)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!17 (ListLongMap!5935 (_ BitVec 64) V!15451 V!15451) Unit!12289)

(assert (=> b!417013 (= lt!191057 (addSameAsAddTwiceSameKeyDiffValues!17 lt!191052 k!794 lt!191054 lt!191059))))

(declare-fun lt!191051 () V!15451)

(declare-fun get!6002 (ValueCell!5036 V!15451) V!15451)

(assert (=> b!417013 (= lt!191054 (get!6002 (select (arr!12124 _values!549) from!863) lt!191051))))

(assert (=> b!417013 (= lt!191061 (+!1194 lt!191052 (tuple2!7009 (select (arr!12123 lt!191056) from!863) lt!191059)))))

(assert (=> b!417013 (= lt!191059 (get!6002 (select (store (arr!12124 _values!549) i!563 (ValueCellFull!5036 v!412)) from!863) lt!191051))))

(declare-fun dynLambda!679 (Int (_ BitVec 64)) V!15451)

(assert (=> b!417013 (= lt!191051 (dynLambda!679 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417013 (= lt!191052 (getCurrentListMapNoExtraKeys!1186 lt!191056 lt!191053 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417014 () Bool)

(assert (=> b!417014 (= e!248843 e!248844)))

(declare-fun res!242890 () Bool)

(assert (=> b!417014 (=> (not res!242890) (not e!248844))))

(assert (=> b!417014 (= res!242890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191056 mask!1025))))

(assert (=> b!417014 (= lt!191056 (array!25354 (store (arr!12123 _keys!709) i!563 k!794) (size!12475 _keys!709)))))

(declare-fun b!417015 () Bool)

(assert (=> b!417015 (= e!248841 (= call!28997 (+!1194 call!28996 (tuple2!7009 k!794 v!412))))))

(declare-fun b!417016 () Bool)

(assert (=> b!417016 (= e!248838 (and e!248842 mapRes!17760))))

(declare-fun condMapEmpty!17760 () Bool)

(declare-fun mapDefault!17760 () ValueCell!5036)

