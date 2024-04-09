; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!622 () Bool)

(assert start!622)

(declare-fun b_free!95 () Bool)

(declare-fun b_next!95 () Bool)

(assert (=> start!622 (= b_free!95 (not b_next!95))))

(declare-fun tp!503 () Bool)

(declare-fun b_and!233 () Bool)

(assert (=> start!622 (= tp!503 b_and!233)))

(declare-fun b!3931 () Bool)

(declare-fun res!5452 () Bool)

(declare-fun e!2015 () Bool)

(assert (=> b!3931 (=> (not res!5452) (not e!2015))))

(declare-datatypes ((array!279 0))(
  ( (array!280 (arr!132 (Array (_ BitVec 32) (_ BitVec 64))) (size!194 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!279)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!279 (_ BitVec 32)) Bool)

(assert (=> b!3931 (= res!5452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!218 () Bool)

(declare-fun mapRes!218 () Bool)

(declare-fun tp!502 () Bool)

(declare-fun e!2014 () Bool)

(assert (=> mapNonEmpty!218 (= mapRes!218 (and tp!502 e!2014))))

(declare-fun mapKey!218 () (_ BitVec 32))

(declare-datatypes ((V!407 0))(
  ( (V!408 (val!92 Int)) )
))
(declare-datatypes ((ValueCell!70 0))(
  ( (ValueCellFull!70 (v!1179 V!407)) (EmptyCell!70) )
))
(declare-fun mapValue!218 () ValueCell!70)

(declare-fun mapRest!218 () (Array (_ BitVec 32) ValueCell!70))

(declare-datatypes ((array!281 0))(
  ( (array!282 (arr!133 (Array (_ BitVec 32) ValueCell!70)) (size!195 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!281)

(assert (=> mapNonEmpty!218 (= (arr!133 _values!1492) (store mapRest!218 mapKey!218 mapValue!218))))

(declare-fun b!3932 () Bool)

(declare-fun e!2012 () Bool)

(declare-fun tp_is_empty!173 () Bool)

(assert (=> b!3932 (= e!2012 tp_is_empty!173)))

(declare-fun b!3933 () Bool)

(declare-fun res!5450 () Bool)

(assert (=> b!3933 (=> (not res!5450) (not e!2015))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3933 (= res!5450 (and (= (size!195 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!194 _keys!1806) (size!195 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3934 () Bool)

(assert (=> b!3934 (= e!2015 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!407)

(declare-fun lt!543 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!407)

(declare-datatypes ((tuple2!76 0))(
  ( (tuple2!77 (_1!38 (_ BitVec 64)) (_2!38 V!407)) )
))
(declare-datatypes ((List!81 0))(
  ( (Nil!78) (Cons!77 (h!643 tuple2!76) (t!2208 List!81)) )
))
(declare-datatypes ((ListLongMap!81 0))(
  ( (ListLongMap!82 (toList!56 List!81)) )
))
(declare-fun contains!26 (ListLongMap!81 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!15 (array!279 array!281 (_ BitVec 32) (_ BitVec 32) V!407 V!407 (_ BitVec 32) Int) ListLongMap!81)

(assert (=> b!3934 (= lt!543 (contains!26 (getCurrentListMap!15 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun res!5451 () Bool)

(assert (=> start!622 (=> (not res!5451) (not e!2015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!622 (= res!5451 (validMask!0 mask!2250))))

(assert (=> start!622 e!2015))

(assert (=> start!622 tp!503))

(assert (=> start!622 true))

(declare-fun e!2013 () Bool)

(declare-fun array_inv!93 (array!281) Bool)

(assert (=> start!622 (and (array_inv!93 _values!1492) e!2013)))

(assert (=> start!622 tp_is_empty!173))

(declare-fun array_inv!94 (array!279) Bool)

(assert (=> start!622 (array_inv!94 _keys!1806)))

(declare-fun b!3935 () Bool)

(declare-fun res!5449 () Bool)

(assert (=> b!3935 (=> (not res!5449) (not e!2015))))

(declare-datatypes ((List!82 0))(
  ( (Nil!79) (Cons!78 (h!644 (_ BitVec 64)) (t!2209 List!82)) )
))
(declare-fun arrayNoDuplicates!0 (array!279 (_ BitVec 32) List!82) Bool)

(assert (=> b!3935 (= res!5449 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!79))))

(declare-fun mapIsEmpty!218 () Bool)

(assert (=> mapIsEmpty!218 mapRes!218))

(declare-fun b!3936 () Bool)

(assert (=> b!3936 (= e!2013 (and e!2012 mapRes!218))))

(declare-fun condMapEmpty!218 () Bool)

(declare-fun mapDefault!218 () ValueCell!70)

