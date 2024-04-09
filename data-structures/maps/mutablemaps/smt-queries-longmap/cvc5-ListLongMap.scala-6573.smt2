; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83350 () Bool)

(assert start!83350)

(declare-fun b_free!19315 () Bool)

(declare-fun b_next!19315 () Bool)

(assert (=> start!83350 (= b_free!19315 (not b_next!19315))))

(declare-fun tp!67224 () Bool)

(declare-fun b_and!30869 () Bool)

(assert (=> start!83350 (= tp!67224 b_and!30869)))

(declare-fun b!972501 () Bool)

(declare-fun e!548183 () Bool)

(declare-fun tp_is_empty!22213 () Bool)

(assert (=> b!972501 (= e!548183 tp_is_empty!22213)))

(declare-fun b!972502 () Bool)

(declare-fun res!651071 () Bool)

(declare-fun e!548182 () Bool)

(assert (=> b!972502 (=> (not res!651071) (not e!548182))))

(declare-datatypes ((array!60453 0))(
  ( (array!60454 (arr!29086 (Array (_ BitVec 32) (_ BitVec 64))) (size!29566 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60453)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60453 (_ BitVec 32)) Bool)

(assert (=> b!972502 (= res!651071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!651072 () Bool)

(assert (=> start!83350 (=> (not res!651072) (not e!548182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83350 (= res!651072 (validMask!0 mask!2147))))

(assert (=> start!83350 e!548182))

(assert (=> start!83350 true))

(declare-datatypes ((V!34601 0))(
  ( (V!34602 (val!11157 Int)) )
))
(declare-datatypes ((ValueCell!10625 0))(
  ( (ValueCellFull!10625 (v!13716 V!34601)) (EmptyCell!10625) )
))
(declare-datatypes ((array!60455 0))(
  ( (array!60456 (arr!29087 (Array (_ BitVec 32) ValueCell!10625)) (size!29567 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60455)

(declare-fun e!548185 () Bool)

(declare-fun array_inv!22397 (array!60455) Bool)

(assert (=> start!83350 (and (array_inv!22397 _values!1425) e!548185)))

(assert (=> start!83350 tp_is_empty!22213))

(assert (=> start!83350 tp!67224))

(declare-fun array_inv!22398 (array!60453) Bool)

(assert (=> start!83350 (array_inv!22398 _keys!1717)))

(declare-fun b!972503 () Bool)

(declare-fun res!651069 () Bool)

(assert (=> b!972503 (=> (not res!651069) (not e!548182))))

(declare-datatypes ((List!20301 0))(
  ( (Nil!20298) (Cons!20297 (h!21459 (_ BitVec 64)) (t!28722 List!20301)) )
))
(declare-fun arrayNoDuplicates!0 (array!60453 (_ BitVec 32) List!20301) Bool)

(assert (=> b!972503 (= res!651069 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20298))))

(declare-fun mapIsEmpty!35329 () Bool)

(declare-fun mapRes!35329 () Bool)

(assert (=> mapIsEmpty!35329 mapRes!35329))

(declare-fun b!972504 () Bool)

(declare-fun res!651067 () Bool)

(assert (=> b!972504 (=> (not res!651067) (not e!548182))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972504 (= res!651067 (validKeyInArray!0 (select (arr!29086 _keys!1717) i!822)))))

(declare-fun b!972505 () Bool)

(declare-fun e!548184 () Bool)

(assert (=> b!972505 (= e!548185 (and e!548184 mapRes!35329))))

(declare-fun condMapEmpty!35329 () Bool)

(declare-fun mapDefault!35329 () ValueCell!10625)

