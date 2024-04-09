; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38054 () Bool)

(assert start!38054)

(declare-fun b_free!8993 () Bool)

(declare-fun b_next!8993 () Bool)

(assert (=> start!38054 (= b_free!8993 (not b_next!8993))))

(declare-fun tp!31752 () Bool)

(declare-fun b_and!16337 () Bool)

(assert (=> start!38054 (= tp!31752 b_and!16337)))

(declare-fun b!391557 () Bool)

(declare-fun e!237150 () Bool)

(declare-fun tp_is_empty!9665 () Bool)

(assert (=> b!391557 (= e!237150 tp_is_empty!9665)))

(declare-fun res!224258 () Bool)

(declare-fun e!237148 () Bool)

(assert (=> start!38054 (=> (not res!224258) (not e!237148))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38054 (= res!224258 (validMask!0 mask!970))))

(assert (=> start!38054 e!237148))

(declare-datatypes ((V!13991 0))(
  ( (V!13992 (val!4877 Int)) )
))
(declare-datatypes ((ValueCell!4489 0))(
  ( (ValueCellFull!4489 (v!7098 V!13991)) (EmptyCell!4489) )
))
(declare-datatypes ((array!23207 0))(
  ( (array!23208 (arr!11062 (Array (_ BitVec 32) ValueCell!4489)) (size!11414 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23207)

(declare-fun e!237154 () Bool)

(declare-fun array_inv!8110 (array!23207) Bool)

(assert (=> start!38054 (and (array_inv!8110 _values!506) e!237154)))

(assert (=> start!38054 tp!31752))

(assert (=> start!38054 true))

(assert (=> start!38054 tp_is_empty!9665))

(declare-datatypes ((array!23209 0))(
  ( (array!23210 (arr!11063 (Array (_ BitVec 32) (_ BitVec 64))) (size!11415 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23209)

(declare-fun array_inv!8111 (array!23209) Bool)

(assert (=> start!38054 (array_inv!8111 _keys!658)))

(declare-fun b!391558 () Bool)

(declare-fun e!237147 () Bool)

(declare-fun e!237152 () Bool)

(assert (=> b!391558 (= e!237147 e!237152)))

(declare-fun res!224255 () Bool)

(assert (=> b!391558 (=> res!224255 e!237152)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!391558 (= res!224255 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6508 0))(
  ( (tuple2!6509 (_1!3264 (_ BitVec 64)) (_2!3264 V!13991)) )
))
(declare-datatypes ((List!6391 0))(
  ( (Nil!6388) (Cons!6387 (h!7243 tuple2!6508) (t!11563 List!6391)) )
))
(declare-datatypes ((ListLongMap!5435 0))(
  ( (ListLongMap!5436 (toList!2733 List!6391)) )
))
(declare-fun lt!184949 () ListLongMap!5435)

(declare-fun lt!184946 () ListLongMap!5435)

(assert (=> b!391558 (= lt!184949 lt!184946)))

(declare-fun lt!184953 () ListLongMap!5435)

(declare-fun lt!184945 () tuple2!6508)

(declare-fun +!1031 (ListLongMap!5435 tuple2!6508) ListLongMap!5435)

(assert (=> b!391558 (= lt!184946 (+!1031 lt!184953 lt!184945))))

(declare-fun lt!184944 () ListLongMap!5435)

(declare-fun lt!184942 () ListLongMap!5435)

(assert (=> b!391558 (= lt!184944 lt!184942)))

(declare-fun lt!184943 () ListLongMap!5435)

(assert (=> b!391558 (= lt!184942 (+!1031 lt!184943 lt!184945))))

(declare-fun lt!184952 () ListLongMap!5435)

(assert (=> b!391558 (= lt!184949 (+!1031 lt!184952 lt!184945))))

(declare-fun zeroValue!472 () V!13991)

(assert (=> b!391558 (= lt!184945 (tuple2!6509 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391559 () Bool)

(declare-fun res!224261 () Bool)

(assert (=> b!391559 (=> (not res!224261) (not e!237148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23209 (_ BitVec 32)) Bool)

(assert (=> b!391559 (= res!224261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391560 () Bool)

(declare-fun res!224254 () Bool)

(assert (=> b!391560 (=> (not res!224254) (not e!237148))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391560 (= res!224254 (and (= (size!11414 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11415 _keys!658) (size!11414 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!391561 () Bool)

(declare-fun res!224257 () Bool)

(assert (=> b!391561 (=> (not res!224257) (not e!237148))))

(declare-fun arrayContainsKey!0 (array!23209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391561 (= res!224257 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!391562 () Bool)

(declare-fun res!224253 () Bool)

(assert (=> b!391562 (=> (not res!224253) (not e!237148))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!391562 (= res!224253 (or (= (select (arr!11063 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11063 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391563 () Bool)

(declare-fun res!224263 () Bool)

(assert (=> b!391563 (=> (not res!224263) (not e!237148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391563 (= res!224263 (validKeyInArray!0 k!778))))

(declare-fun b!391564 () Bool)

(declare-fun res!224259 () Bool)

(assert (=> b!391564 (=> (not res!224259) (not e!237148))))

(declare-datatypes ((List!6392 0))(
  ( (Nil!6389) (Cons!6388 (h!7244 (_ BitVec 64)) (t!11564 List!6392)) )
))
(declare-fun arrayNoDuplicates!0 (array!23209 (_ BitVec 32) List!6392) Bool)

(assert (=> b!391564 (= res!224259 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6389))))

(declare-fun b!391565 () Bool)

(declare-fun e!237153 () Bool)

(assert (=> b!391565 (= e!237153 tp_is_empty!9665)))

(declare-fun b!391566 () Bool)

(declare-fun mapRes!16083 () Bool)

(assert (=> b!391566 (= e!237154 (and e!237150 mapRes!16083))))

(declare-fun condMapEmpty!16083 () Bool)

(declare-fun mapDefault!16083 () ValueCell!4489)

