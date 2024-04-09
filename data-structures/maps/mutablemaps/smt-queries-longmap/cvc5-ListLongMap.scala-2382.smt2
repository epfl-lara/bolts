; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37762 () Bool)

(assert start!37762)

(declare-fun b_free!8857 () Bool)

(declare-fun b_next!8857 () Bool)

(assert (=> start!37762 (= b_free!8857 (not b_next!8857))))

(declare-fun tp!31323 () Bool)

(declare-fun b_and!16117 () Bool)

(assert (=> start!37762 (= tp!31323 b_and!16117)))

(declare-fun b!387221 () Bool)

(declare-fun e!234774 () Bool)

(declare-fun e!234773 () Bool)

(assert (=> b!387221 (= e!234774 e!234773)))

(declare-fun res!221314 () Bool)

(assert (=> b!387221 (=> (not res!221314) (not e!234773))))

(declare-datatypes ((array!22927 0))(
  ( (array!22928 (arr!10929 (Array (_ BitVec 32) (_ BitVec 64))) (size!11281 (_ BitVec 32))) )
))
(declare-fun lt!181994 () array!22927)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22927 (_ BitVec 32)) Bool)

(assert (=> b!387221 (= res!221314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181994 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22927)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387221 (= lt!181994 (array!22928 (store (arr!10929 _keys!658) i!548 k!778) (size!11281 _keys!658)))))

(declare-fun res!221317 () Bool)

(assert (=> start!37762 (=> (not res!221317) (not e!234774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37762 (= res!221317 (validMask!0 mask!970))))

(assert (=> start!37762 e!234774))

(declare-datatypes ((V!13811 0))(
  ( (V!13812 (val!4809 Int)) )
))
(declare-datatypes ((ValueCell!4421 0))(
  ( (ValueCellFull!4421 (v!7002 V!13811)) (EmptyCell!4421) )
))
(declare-datatypes ((array!22929 0))(
  ( (array!22930 (arr!10930 (Array (_ BitVec 32) ValueCell!4421)) (size!11282 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22929)

(declare-fun e!234772 () Bool)

(declare-fun array_inv!8016 (array!22929) Bool)

(assert (=> start!37762 (and (array_inv!8016 _values!506) e!234772)))

(assert (=> start!37762 tp!31323))

(assert (=> start!37762 true))

(declare-fun tp_is_empty!9529 () Bool)

(assert (=> start!37762 tp_is_empty!9529))

(declare-fun array_inv!8017 (array!22927) Bool)

(assert (=> start!37762 (array_inv!8017 _keys!658)))

(declare-fun b!387222 () Bool)

(declare-fun res!221313 () Bool)

(assert (=> b!387222 (=> (not res!221313) (not e!234774))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!387222 (= res!221313 (and (= (size!11282 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11281 _keys!658) (size!11282 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387223 () Bool)

(declare-fun e!234777 () Bool)

(assert (=> b!387223 (= e!234777 tp_is_empty!9529)))

(declare-fun b!387224 () Bool)

(declare-fun res!221319 () Bool)

(assert (=> b!387224 (=> (not res!221319) (not e!234774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387224 (= res!221319 (validKeyInArray!0 k!778))))

(declare-fun b!387225 () Bool)

(assert (=> b!387225 (= e!234773 false)))

(declare-datatypes ((tuple2!6406 0))(
  ( (tuple2!6407 (_1!3213 (_ BitVec 64)) (_2!3213 V!13811)) )
))
(declare-datatypes ((List!6290 0))(
  ( (Nil!6287) (Cons!6286 (h!7142 tuple2!6406) (t!11448 List!6290)) )
))
(declare-datatypes ((ListLongMap!5333 0))(
  ( (ListLongMap!5334 (toList!2682 List!6290)) )
))
(declare-fun lt!181996 () ListLongMap!5333)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13811)

(declare-fun v!373 () V!13811)

(declare-fun minValue!472 () V!13811)

(declare-fun getCurrentListMapNoExtraKeys!916 (array!22927 array!22929 (_ BitVec 32) (_ BitVec 32) V!13811 V!13811 (_ BitVec 32) Int) ListLongMap!5333)

(assert (=> b!387225 (= lt!181996 (getCurrentListMapNoExtraKeys!916 lt!181994 (array!22930 (store (arr!10930 _values!506) i!548 (ValueCellFull!4421 v!373)) (size!11282 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181995 () ListLongMap!5333)

(assert (=> b!387225 (= lt!181995 (getCurrentListMapNoExtraKeys!916 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387226 () Bool)

(declare-fun e!234775 () Bool)

(assert (=> b!387226 (= e!234775 tp_is_empty!9529)))

(declare-fun b!387227 () Bool)

(declare-fun res!221316 () Bool)

(assert (=> b!387227 (=> (not res!221316) (not e!234774))))

(declare-datatypes ((List!6291 0))(
  ( (Nil!6288) (Cons!6287 (h!7143 (_ BitVec 64)) (t!11449 List!6291)) )
))
(declare-fun arrayNoDuplicates!0 (array!22927 (_ BitVec 32) List!6291) Bool)

(assert (=> b!387227 (= res!221316 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6288))))

(declare-fun b!387228 () Bool)

(declare-fun mapRes!15858 () Bool)

(assert (=> b!387228 (= e!234772 (and e!234775 mapRes!15858))))

(declare-fun condMapEmpty!15858 () Bool)

(declare-fun mapDefault!15858 () ValueCell!4421)

