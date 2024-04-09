; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38164 () Bool)

(assert start!38164)

(declare-fun b_free!9037 () Bool)

(declare-fun b_next!9037 () Bool)

(assert (=> start!38164 (= b_free!9037 (not b_next!9037))))

(declare-fun tp!31893 () Bool)

(declare-fun b_and!16417 () Bool)

(assert (=> start!38164 (= tp!31893 b_and!16417)))

(declare-fun b!393145 () Bool)

(declare-fun e!238049 () Bool)

(declare-fun tp_is_empty!9709 () Bool)

(assert (=> b!393145 (= e!238049 tp_is_empty!9709)))

(declare-fun b!393146 () Bool)

(declare-fun res!225310 () Bool)

(declare-fun e!238051 () Bool)

(assert (=> b!393146 (=> (not res!225310) (not e!238051))))

(declare-datatypes ((array!23299 0))(
  ( (array!23300 (arr!11105 (Array (_ BitVec 32) (_ BitVec 64))) (size!11457 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23299)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23299 (_ BitVec 32)) Bool)

(assert (=> b!393146 (= res!225310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!225307 () Bool)

(assert (=> start!38164 (=> (not res!225307) (not e!238051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38164 (= res!225307 (validMask!0 mask!970))))

(assert (=> start!38164 e!238051))

(declare-datatypes ((V!14051 0))(
  ( (V!14052 (val!4899 Int)) )
))
(declare-datatypes ((ValueCell!4511 0))(
  ( (ValueCellFull!4511 (v!7132 V!14051)) (EmptyCell!4511) )
))
(declare-datatypes ((array!23301 0))(
  ( (array!23302 (arr!11106 (Array (_ BitVec 32) ValueCell!4511)) (size!11458 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23301)

(declare-fun e!238047 () Bool)

(declare-fun array_inv!8140 (array!23301) Bool)

(assert (=> start!38164 (and (array_inv!8140 _values!506) e!238047)))

(assert (=> start!38164 tp!31893))

(assert (=> start!38164 true))

(assert (=> start!38164 tp_is_empty!9709))

(declare-fun array_inv!8141 (array!23299) Bool)

(assert (=> start!38164 (array_inv!8141 _keys!658)))

(declare-fun b!393147 () Bool)

(declare-fun e!238050 () Bool)

(assert (=> b!393147 (= e!238051 e!238050)))

(declare-fun res!225312 () Bool)

(assert (=> b!393147 (=> (not res!225312) (not e!238050))))

(declare-fun lt!186100 () array!23299)

(assert (=> b!393147 (= res!225312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186100 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393147 (= lt!186100 (array!23300 (store (arr!11105 _keys!658) i!548 k!778) (size!11457 _keys!658)))))

(declare-fun b!393148 () Bool)

(declare-fun res!225313 () Bool)

(assert (=> b!393148 (=> (not res!225313) (not e!238051))))

(assert (=> b!393148 (= res!225313 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11457 _keys!658))))))

(declare-fun b!393149 () Bool)

(declare-fun res!225306 () Bool)

(assert (=> b!393149 (=> (not res!225306) (not e!238051))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!393149 (= res!225306 (and (= (size!11458 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11457 _keys!658) (size!11458 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393150 () Bool)

(declare-fun res!225311 () Bool)

(assert (=> b!393150 (=> (not res!225311) (not e!238050))))

(declare-datatypes ((List!6427 0))(
  ( (Nil!6424) (Cons!6423 (h!7279 (_ BitVec 64)) (t!11605 List!6427)) )
))
(declare-fun arrayNoDuplicates!0 (array!23299 (_ BitVec 32) List!6427) Bool)

(assert (=> b!393150 (= res!225311 (arrayNoDuplicates!0 lt!186100 #b00000000000000000000000000000000 Nil!6424))))

(declare-fun b!393151 () Bool)

(declare-fun mapRes!16158 () Bool)

(assert (=> b!393151 (= e!238047 (and e!238049 mapRes!16158))))

(declare-fun condMapEmpty!16158 () Bool)

(declare-fun mapDefault!16158 () ValueCell!4511)

