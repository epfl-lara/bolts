; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37870 () Bool)

(assert start!37870)

(declare-fun b_free!8921 () Bool)

(declare-fun b_next!8921 () Bool)

(assert (=> start!37870 (= b_free!8921 (not b_next!8921))))

(declare-fun tp!31521 () Bool)

(declare-fun b_and!16205 () Bool)

(assert (=> start!37870 (= tp!31521 b_and!16205)))

(declare-fun b!388913 () Bool)

(declare-fun res!222499 () Bool)

(declare-fun e!235653 () Bool)

(assert (=> b!388913 (=> (not res!222499) (not e!235653))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23057 0))(
  ( (array!23058 (arr!10992 (Array (_ BitVec 32) (_ BitVec 64))) (size!11344 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23057)

(assert (=> b!388913 (= res!222499 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11344 _keys!658))))))

(declare-fun res!222492 () Bool)

(assert (=> start!37870 (=> (not res!222492) (not e!235653))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37870 (= res!222492 (validMask!0 mask!970))))

(assert (=> start!37870 e!235653))

(declare-datatypes ((V!13895 0))(
  ( (V!13896 (val!4841 Int)) )
))
(declare-datatypes ((ValueCell!4453 0))(
  ( (ValueCellFull!4453 (v!7042 V!13895)) (EmptyCell!4453) )
))
(declare-datatypes ((array!23059 0))(
  ( (array!23060 (arr!10993 (Array (_ BitVec 32) ValueCell!4453)) (size!11345 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23059)

(declare-fun e!235650 () Bool)

(declare-fun array_inv!8058 (array!23059) Bool)

(assert (=> start!37870 (and (array_inv!8058 _values!506) e!235650)))

(assert (=> start!37870 tp!31521))

(assert (=> start!37870 true))

(declare-fun tp_is_empty!9593 () Bool)

(assert (=> start!37870 tp_is_empty!9593))

(declare-fun array_inv!8059 (array!23057) Bool)

(assert (=> start!37870 (array_inv!8059 _keys!658)))

(declare-datatypes ((tuple2!6454 0))(
  ( (tuple2!6455 (_1!3237 (_ BitVec 64)) (_2!3237 V!13895)) )
))
(declare-datatypes ((List!6337 0))(
  ( (Nil!6334) (Cons!6333 (h!7189 tuple2!6454) (t!11499 List!6337)) )
))
(declare-datatypes ((ListLongMap!5381 0))(
  ( (ListLongMap!5382 (toList!2706 List!6337)) )
))
(declare-fun lt!182815 () ListLongMap!5381)

(declare-fun lt!182814 () tuple2!6454)

(declare-fun b!388914 () Bool)

(declare-fun lt!182819 () tuple2!6454)

(declare-fun e!235649 () Bool)

(declare-fun lt!182816 () ListLongMap!5381)

(declare-fun +!1004 (ListLongMap!5381 tuple2!6454) ListLongMap!5381)

(assert (=> b!388914 (= e!235649 (= lt!182816 (+!1004 (+!1004 lt!182815 lt!182819) lt!182814)))))

(declare-fun e!235651 () Bool)

(assert (=> b!388914 e!235651))

(declare-fun res!222497 () Bool)

(assert (=> b!388914 (=> (not res!222497) (not e!235651))))

(declare-fun lt!182811 () ListLongMap!5381)

(assert (=> b!388914 (= res!222497 (= lt!182816 (+!1004 (+!1004 lt!182811 lt!182819) lt!182814)))))

(declare-fun minValue!472 () V!13895)

(assert (=> b!388914 (= lt!182814 (tuple2!6455 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun zeroValue!472 () V!13895)

(assert (=> b!388914 (= lt!182819 (tuple2!6455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15960 () Bool)

(declare-fun mapRes!15960 () Bool)

(declare-fun tp!31520 () Bool)

(declare-fun e!235652 () Bool)

(assert (=> mapNonEmpty!15960 (= mapRes!15960 (and tp!31520 e!235652))))

(declare-fun mapRest!15960 () (Array (_ BitVec 32) ValueCell!4453))

(declare-fun mapKey!15960 () (_ BitVec 32))

(declare-fun mapValue!15960 () ValueCell!4453)

(assert (=> mapNonEmpty!15960 (= (arr!10993 _values!506) (store mapRest!15960 mapKey!15960 mapValue!15960))))

(declare-fun b!388915 () Bool)

(declare-fun res!222496 () Bool)

(assert (=> b!388915 (=> (not res!222496) (not e!235653))))

(assert (=> b!388915 (= res!222496 (or (= (select (arr!10992 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10992 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388916 () Bool)

(declare-fun e!235647 () Bool)

(assert (=> b!388916 (= e!235650 (and e!235647 mapRes!15960))))

(declare-fun condMapEmpty!15960 () Bool)

(declare-fun mapDefault!15960 () ValueCell!4453)

