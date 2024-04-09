; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37712 () Bool)

(assert start!37712)

(declare-fun b_free!8807 () Bool)

(declare-fun b_next!8807 () Bool)

(assert (=> start!37712 (= b_free!8807 (not b_next!8807))))

(declare-fun tp!31172 () Bool)

(declare-fun b_and!16067 () Bool)

(assert (=> start!37712 (= tp!31172 b_and!16067)))

(declare-fun b!386246 () Bool)

(declare-fun res!220562 () Bool)

(declare-fun e!234326 () Bool)

(assert (=> b!386246 (=> (not res!220562) (not e!234326))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22829 0))(
  ( (array!22830 (arr!10880 (Array (_ BitVec 32) (_ BitVec 64))) (size!11232 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22829)

(assert (=> b!386246 (= res!220562 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11232 _keys!658))))))

(declare-fun b!386247 () Bool)

(declare-fun res!220564 () Bool)

(assert (=> b!386247 (=> (not res!220564) (not e!234326))))

(declare-datatypes ((List!6255 0))(
  ( (Nil!6252) (Cons!6251 (h!7107 (_ BitVec 64)) (t!11413 List!6255)) )
))
(declare-fun arrayNoDuplicates!0 (array!22829 (_ BitVec 32) List!6255) Bool)

(assert (=> b!386247 (= res!220564 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6252))))

(declare-fun b!386248 () Bool)

(declare-fun e!234325 () Bool)

(declare-fun tp_is_empty!9479 () Bool)

(assert (=> b!386248 (= e!234325 tp_is_empty!9479)))

(declare-fun b!386249 () Bool)

(declare-fun e!234324 () Bool)

(assert (=> b!386249 (= e!234326 e!234324)))

(declare-fun res!220569 () Bool)

(assert (=> b!386249 (=> (not res!220569) (not e!234324))))

(declare-fun lt!181771 () array!22829)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22829 (_ BitVec 32)) Bool)

(assert (=> b!386249 (= res!220569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181771 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!386249 (= lt!181771 (array!22830 (store (arr!10880 _keys!658) i!548 k!778) (size!11232 _keys!658)))))

(declare-fun b!386250 () Bool)

(declare-fun res!220567 () Bool)

(assert (=> b!386250 (=> (not res!220567) (not e!234326))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13743 0))(
  ( (V!13744 (val!4784 Int)) )
))
(declare-datatypes ((ValueCell!4396 0))(
  ( (ValueCellFull!4396 (v!6977 V!13743)) (EmptyCell!4396) )
))
(declare-datatypes ((array!22831 0))(
  ( (array!22832 (arr!10881 (Array (_ BitVec 32) ValueCell!4396)) (size!11233 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22831)

(assert (=> b!386250 (= res!220567 (and (= (size!11233 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11232 _keys!658) (size!11233 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386251 () Bool)

(declare-fun res!220565 () Bool)

(assert (=> b!386251 (=> (not res!220565) (not e!234326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386251 (= res!220565 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15783 () Bool)

(declare-fun mapRes!15783 () Bool)

(declare-fun tp!31173 () Bool)

(assert (=> mapNonEmpty!15783 (= mapRes!15783 (and tp!31173 e!234325))))

(declare-fun mapRest!15783 () (Array (_ BitVec 32) ValueCell!4396))

(declare-fun mapKey!15783 () (_ BitVec 32))

(declare-fun mapValue!15783 () ValueCell!4396)

(assert (=> mapNonEmpty!15783 (= (arr!10881 _values!506) (store mapRest!15783 mapKey!15783 mapValue!15783))))

(declare-fun b!386252 () Bool)

(declare-fun e!234323 () Bool)

(declare-fun e!234327 () Bool)

(assert (=> b!386252 (= e!234323 (and e!234327 mapRes!15783))))

(declare-fun condMapEmpty!15783 () Bool)

(declare-fun mapDefault!15783 () ValueCell!4396)

