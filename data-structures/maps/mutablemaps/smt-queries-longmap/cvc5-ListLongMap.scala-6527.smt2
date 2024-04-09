; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83062 () Bool)

(assert start!83062)

(declare-fun res!648527 () Bool)

(declare-fun e!546004 () Bool)

(assert (=> start!83062 (=> (not res!648527) (not e!546004))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83062 (= res!648527 (validMask!0 mask!2147))))

(assert (=> start!83062 e!546004))

(assert (=> start!83062 true))

(declare-datatypes ((V!34233 0))(
  ( (V!34234 (val!11019 Int)) )
))
(declare-datatypes ((ValueCell!10487 0))(
  ( (ValueCellFull!10487 (v!13577 V!34233)) (EmptyCell!10487) )
))
(declare-datatypes ((array!59925 0))(
  ( (array!59926 (arr!28823 (Array (_ BitVec 32) ValueCell!10487)) (size!29303 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59925)

(declare-fun e!546003 () Bool)

(declare-fun array_inv!22207 (array!59925) Bool)

(assert (=> start!83062 (and (array_inv!22207 _values!1425) e!546003)))

(declare-datatypes ((array!59927 0))(
  ( (array!59928 (arr!28824 (Array (_ BitVec 32) (_ BitVec 64))) (size!29304 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59927)

(declare-fun array_inv!22208 (array!59927) Bool)

(assert (=> start!83062 (array_inv!22208 _keys!1717)))

(declare-fun b!968653 () Bool)

(declare-fun e!546006 () Bool)

(declare-datatypes ((List!20123 0))(
  ( (Nil!20120) (Cons!20119 (h!21281 (_ BitVec 64)) (t!28494 List!20123)) )
))
(declare-fun contains!5548 (List!20123 (_ BitVec 64)) Bool)

(assert (=> b!968653 (= e!546006 (contains!5548 Nil!20120 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!968654 () Bool)

(declare-fun res!648526 () Bool)

(assert (=> b!968654 (=> (not res!648526) (not e!546004))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968654 (= res!648526 (and (= (size!29303 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29304 _keys!1717) (size!29303 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968655 () Bool)

(declare-fun e!546007 () Bool)

(declare-fun tp_is_empty!21937 () Bool)

(assert (=> b!968655 (= e!546007 tp_is_empty!21937)))

(declare-fun b!968656 () Bool)

(declare-fun e!546005 () Bool)

(assert (=> b!968656 (= e!546005 tp_is_empty!21937)))

(declare-fun mapNonEmpty!34912 () Bool)

(declare-fun mapRes!34912 () Bool)

(declare-fun tp!66481 () Bool)

(assert (=> mapNonEmpty!34912 (= mapRes!34912 (and tp!66481 e!546005))))

(declare-fun mapRest!34912 () (Array (_ BitVec 32) ValueCell!10487))

(declare-fun mapKey!34912 () (_ BitVec 32))

(declare-fun mapValue!34912 () ValueCell!10487)

(assert (=> mapNonEmpty!34912 (= (arr!28823 _values!1425) (store mapRest!34912 mapKey!34912 mapValue!34912))))

(declare-fun b!968657 () Bool)

(assert (=> b!968657 (= e!546003 (and e!546007 mapRes!34912))))

(declare-fun condMapEmpty!34912 () Bool)

(declare-fun mapDefault!34912 () ValueCell!10487)

