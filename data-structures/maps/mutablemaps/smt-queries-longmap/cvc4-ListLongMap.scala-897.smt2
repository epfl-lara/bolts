; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20494 () Bool)

(assert start!20494)

(declare-fun b_free!5141 () Bool)

(declare-fun b_next!5141 () Bool)

(assert (=> start!20494 (= b_free!5141 (not b_next!5141))))

(declare-fun tp!18454 () Bool)

(declare-fun b_and!11905 () Bool)

(assert (=> start!20494 (= tp!18454 b_and!11905)))

(declare-fun b!203131 () Bool)

(declare-fun res!97550 () Bool)

(declare-fun e!133014 () Bool)

(assert (=> b!203131 (=> (not res!97550) (not e!133014))))

(declare-datatypes ((array!9218 0))(
  ( (array!9219 (arr!4359 (Array (_ BitVec 32) (_ BitVec 64))) (size!4684 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9218)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9218 (_ BitVec 32)) Bool)

(assert (=> b!203131 (= res!97550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203132 () Bool)

(declare-fun e!133015 () Bool)

(declare-fun tp_is_empty!4997 () Bool)

(assert (=> b!203132 (= e!133015 tp_is_empty!4997)))

(declare-fun res!97551 () Bool)

(assert (=> start!20494 (=> (not res!97551) (not e!133014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20494 (= res!97551 (validMask!0 mask!1149))))

(assert (=> start!20494 e!133014))

(declare-datatypes ((V!6309 0))(
  ( (V!6310 (val!2543 Int)) )
))
(declare-datatypes ((ValueCell!2155 0))(
  ( (ValueCellFull!2155 (v!4509 V!6309)) (EmptyCell!2155) )
))
(declare-datatypes ((array!9220 0))(
  ( (array!9221 (arr!4360 (Array (_ BitVec 32) ValueCell!2155)) (size!4685 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9220)

(declare-fun e!133012 () Bool)

(declare-fun array_inv!2873 (array!9220) Bool)

(assert (=> start!20494 (and (array_inv!2873 _values!649) e!133012)))

(assert (=> start!20494 true))

(assert (=> start!20494 tp_is_empty!4997))

(declare-fun array_inv!2874 (array!9218) Bool)

(assert (=> start!20494 (array_inv!2874 _keys!825)))

(assert (=> start!20494 tp!18454))

(declare-fun b!203133 () Bool)

(declare-fun e!133010 () Bool)

(assert (=> b!203133 (= e!133010 true)))

(declare-datatypes ((tuple2!3854 0))(
  ( (tuple2!3855 (_1!1937 (_ BitVec 64)) (_2!1937 V!6309)) )
))
(declare-datatypes ((List!2782 0))(
  ( (Nil!2779) (Cons!2778 (h!3420 tuple2!3854) (t!7721 List!2782)) )
))
(declare-datatypes ((ListLongMap!2781 0))(
  ( (ListLongMap!2782 (toList!1406 List!2782)) )
))
(declare-fun lt!102378 () ListLongMap!2781)

(declare-fun lt!102385 () ListLongMap!2781)

(declare-fun lt!102379 () tuple2!3854)

(declare-fun +!423 (ListLongMap!2781 tuple2!3854) ListLongMap!2781)

(assert (=> b!203133 (= lt!102378 (+!423 lt!102385 lt!102379))))

(declare-fun lt!102376 () ListLongMap!2781)

(declare-fun v!520 () V!6309)

(declare-datatypes ((Unit!6147 0))(
  ( (Unit!6148) )
))
(declare-fun lt!102374 () Unit!6147)

(declare-fun zeroValue!615 () V!6309)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!138 (ListLongMap!2781 (_ BitVec 64) V!6309 (_ BitVec 64) V!6309) Unit!6147)

(assert (=> b!203133 (= lt!102374 (addCommutativeForDiffKeys!138 lt!102376 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203134 () Bool)

(declare-fun e!133009 () Bool)

(assert (=> b!203134 (= e!133009 tp_is_empty!4997)))

(declare-fun b!203135 () Bool)

(declare-fun mapRes!8564 () Bool)

(assert (=> b!203135 (= e!133012 (and e!133015 mapRes!8564))))

(declare-fun condMapEmpty!8564 () Bool)

(declare-fun mapDefault!8564 () ValueCell!2155)

