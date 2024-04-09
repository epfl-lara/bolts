; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37930 () Bool)

(assert start!37930)

(declare-fun b_free!8935 () Bool)

(declare-fun b_next!8935 () Bool)

(assert (=> start!37930 (= b_free!8935 (not b_next!8935))))

(declare-fun tp!31569 () Bool)

(declare-fun b_and!16243 () Bool)

(assert (=> start!37930 (= tp!31569 b_and!16243)))

(declare-fun b!389652 () Bool)

(declare-fun res!222953 () Bool)

(declare-fun e!236081 () Bool)

(assert (=> b!389652 (=> (not res!222953) (not e!236081))))

(declare-datatypes ((array!23089 0))(
  ( (array!23090 (arr!11006 (Array (_ BitVec 32) (_ BitVec 64))) (size!11358 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23089)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389652 (= res!222953 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!389653 () Bool)

(declare-fun e!236077 () Bool)

(assert (=> b!389653 (= e!236081 e!236077)))

(declare-fun res!222945 () Bool)

(assert (=> b!389653 (=> (not res!222945) (not e!236077))))

(declare-fun lt!183411 () array!23089)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23089 (_ BitVec 32)) Bool)

(assert (=> b!389653 (= res!222945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183411 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389653 (= lt!183411 (array!23090 (store (arr!11006 _keys!658) i!548 k!778) (size!11358 _keys!658)))))

(declare-fun mapIsEmpty!15987 () Bool)

(declare-fun mapRes!15987 () Bool)

(assert (=> mapIsEmpty!15987 mapRes!15987))

(declare-fun mapNonEmpty!15987 () Bool)

(declare-fun tp!31568 () Bool)

(declare-fun e!236078 () Bool)

(assert (=> mapNonEmpty!15987 (= mapRes!15987 (and tp!31568 e!236078))))

(declare-datatypes ((V!13915 0))(
  ( (V!13916 (val!4848 Int)) )
))
(declare-datatypes ((ValueCell!4460 0))(
  ( (ValueCellFull!4460 (v!7057 V!13915)) (EmptyCell!4460) )
))
(declare-fun mapValue!15987 () ValueCell!4460)

(declare-datatypes ((array!23091 0))(
  ( (array!23092 (arr!11007 (Array (_ BitVec 32) ValueCell!4460)) (size!11359 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23091)

(declare-fun mapKey!15987 () (_ BitVec 32))

(declare-fun mapRest!15987 () (Array (_ BitVec 32) ValueCell!4460))

(assert (=> mapNonEmpty!15987 (= (arr!11007 _values!506) (store mapRest!15987 mapKey!15987 mapValue!15987))))

(declare-fun b!389654 () Bool)

(declare-fun res!222952 () Bool)

(assert (=> b!389654 (=> (not res!222952) (not e!236081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389654 (= res!222952 (validKeyInArray!0 k!778))))

(declare-fun b!389655 () Bool)

(declare-fun res!222950 () Bool)

(assert (=> b!389655 (=> (not res!222950) (not e!236081))))

(assert (=> b!389655 (= res!222950 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11358 _keys!658))))))

(declare-fun res!222946 () Bool)

(assert (=> start!37930 (=> (not res!222946) (not e!236081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37930 (= res!222946 (validMask!0 mask!970))))

(assert (=> start!37930 e!236081))

(declare-fun e!236083 () Bool)

(declare-fun array_inv!8068 (array!23091) Bool)

(assert (=> start!37930 (and (array_inv!8068 _values!506) e!236083)))

(assert (=> start!37930 tp!31569))

(assert (=> start!37930 true))

(declare-fun tp_is_empty!9607 () Bool)

(assert (=> start!37930 tp_is_empty!9607))

(declare-fun array_inv!8069 (array!23089) Bool)

(assert (=> start!37930 (array_inv!8069 _keys!658)))

(declare-fun b!389656 () Bool)

(declare-fun res!222949 () Bool)

(assert (=> b!389656 (=> (not res!222949) (not e!236081))))

(assert (=> b!389656 (= res!222949 (or (= (select (arr!11006 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11006 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389657 () Bool)

(declare-fun res!222944 () Bool)

(assert (=> b!389657 (=> (not res!222944) (not e!236081))))

(assert (=> b!389657 (= res!222944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389658 () Bool)

(declare-fun e!236079 () Bool)

(assert (=> b!389658 (= e!236079 true)))

(declare-datatypes ((tuple2!6466 0))(
  ( (tuple2!6467 (_1!3243 (_ BitVec 64)) (_2!3243 V!13915)) )
))
(declare-datatypes ((List!6349 0))(
  ( (Nil!6346) (Cons!6345 (h!7201 tuple2!6466) (t!11515 List!6349)) )
))
(declare-datatypes ((ListLongMap!5393 0))(
  ( (ListLongMap!5394 (toList!2712 List!6349)) )
))
(declare-fun lt!183424 () ListLongMap!5393)

(declare-fun lt!183421 () tuple2!6466)

(declare-fun lt!183425 () tuple2!6466)

(declare-fun lt!183416 () ListLongMap!5393)

(declare-fun +!1010 (ListLongMap!5393 tuple2!6466) ListLongMap!5393)

(assert (=> b!389658 (= (+!1010 lt!183416 lt!183421) (+!1010 lt!183424 lt!183425))))

(declare-datatypes ((Unit!11909 0))(
  ( (Unit!11910) )
))
(declare-fun lt!183413 () Unit!11909)

(declare-fun v!373 () V!13915)

(declare-fun lt!183423 () ListLongMap!5393)

(declare-fun minValue!472 () V!13915)

(declare-fun addCommutativeForDiffKeys!327 (ListLongMap!5393 (_ BitVec 64) V!13915 (_ BitVec 64) V!13915) Unit!11909)

(assert (=> b!389658 (= lt!183413 (addCommutativeForDiffKeys!327 lt!183423 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!389659 () Bool)

(declare-fun e!236082 () Bool)

(assert (=> b!389659 (= e!236077 (not e!236082))))

(declare-fun res!222948 () Bool)

(assert (=> b!389659 (=> res!222948 e!236082)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!389659 (= res!222948 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!183418 () ListLongMap!5393)

(declare-fun zeroValue!472 () V!13915)

(declare-fun getCurrentListMap!2080 (array!23089 array!23091 (_ BitVec 32) (_ BitVec 32) V!13915 V!13915 (_ BitVec 32) Int) ListLongMap!5393)

(assert (=> b!389659 (= lt!183418 (getCurrentListMap!2080 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183415 () array!23091)

(declare-fun lt!183426 () ListLongMap!5393)

(assert (=> b!389659 (= lt!183426 (getCurrentListMap!2080 lt!183411 lt!183415 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183420 () ListLongMap!5393)

(declare-fun lt!183417 () ListLongMap!5393)

(assert (=> b!389659 (and (= lt!183420 lt!183417) (= lt!183417 lt!183420))))

(declare-fun lt!183412 () ListLongMap!5393)

(assert (=> b!389659 (= lt!183417 (+!1010 lt!183412 lt!183425))))

(assert (=> b!389659 (= lt!183425 (tuple2!6467 k!778 v!373))))

(declare-fun lt!183427 () Unit!11909)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!237 (array!23089 array!23091 (_ BitVec 32) (_ BitVec 32) V!13915 V!13915 (_ BitVec 32) (_ BitVec 64) V!13915 (_ BitVec 32) Int) Unit!11909)

(assert (=> b!389659 (= lt!183427 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!237 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!942 (array!23089 array!23091 (_ BitVec 32) (_ BitVec 32) V!13915 V!13915 (_ BitVec 32) Int) ListLongMap!5393)

(assert (=> b!389659 (= lt!183420 (getCurrentListMapNoExtraKeys!942 lt!183411 lt!183415 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389659 (= lt!183415 (array!23092 (store (arr!11007 _values!506) i!548 (ValueCellFull!4460 v!373)) (size!11359 _values!506)))))

(assert (=> b!389659 (= lt!183412 (getCurrentListMapNoExtraKeys!942 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389660 () Bool)

(assert (=> b!389660 (= e!236082 e!236079)))

(declare-fun res!222955 () Bool)

(assert (=> b!389660 (=> res!222955 e!236079)))

(assert (=> b!389660 (= res!222955 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!183414 () ListLongMap!5393)

(assert (=> b!389660 (= lt!183414 lt!183416)))

(assert (=> b!389660 (= lt!183416 (+!1010 lt!183423 lt!183425))))

(declare-fun lt!183422 () Unit!11909)

(assert (=> b!389660 (= lt!183422 (addCommutativeForDiffKeys!327 lt!183412 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!389660 (= lt!183426 (+!1010 lt!183414 lt!183421))))

(declare-fun lt!183419 () tuple2!6466)

(assert (=> b!389660 (= lt!183414 (+!1010 lt!183417 lt!183419))))

(assert (=> b!389660 (= lt!183418 lt!183424)))

(assert (=> b!389660 (= lt!183424 (+!1010 lt!183423 lt!183421))))

(assert (=> b!389660 (= lt!183423 (+!1010 lt!183412 lt!183419))))

(assert (=> b!389660 (= lt!183426 (+!1010 (+!1010 lt!183420 lt!183419) lt!183421))))

(assert (=> b!389660 (= lt!183421 (tuple2!6467 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389660 (= lt!183419 (tuple2!6467 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!389661 () Bool)

(declare-fun res!222951 () Bool)

(assert (=> b!389661 (=> (not res!222951) (not e!236081))))

(declare-datatypes ((List!6350 0))(
  ( (Nil!6347) (Cons!6346 (h!7202 (_ BitVec 64)) (t!11516 List!6350)) )
))
(declare-fun arrayNoDuplicates!0 (array!23089 (_ BitVec 32) List!6350) Bool)

(assert (=> b!389661 (= res!222951 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6347))))

(declare-fun b!389662 () Bool)

(declare-fun res!222947 () Bool)

(assert (=> b!389662 (=> (not res!222947) (not e!236077))))

(assert (=> b!389662 (= res!222947 (arrayNoDuplicates!0 lt!183411 #b00000000000000000000000000000000 Nil!6347))))

(declare-fun b!389663 () Bool)

(declare-fun res!222954 () Bool)

(assert (=> b!389663 (=> (not res!222954) (not e!236081))))

(assert (=> b!389663 (= res!222954 (and (= (size!11359 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11358 _keys!658) (size!11359 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389664 () Bool)

(declare-fun e!236076 () Bool)

(assert (=> b!389664 (= e!236083 (and e!236076 mapRes!15987))))

(declare-fun condMapEmpty!15987 () Bool)

(declare-fun mapDefault!15987 () ValueCell!4460)

