; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!552 () Bool)

(assert start!552)

(declare-fun b!3303 () Bool)

(declare-fun e!1537 () Bool)

(assert (=> b!3303 (= e!1537 false)))

(declare-fun lt!453 () Bool)

(declare-datatypes ((array!161 0))(
  ( (array!162 (arr!74 (Array (_ BitVec 32) (_ BitVec 64))) (size!136 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!161)

(declare-datatypes ((List!50 0))(
  ( (Nil!47) (Cons!46 (h!612 (_ BitVec 64)) (t!2177 List!50)) )
))
(declare-fun arrayNoDuplicates!0 (array!161 (_ BitVec 32) List!50) Bool)

(assert (=> b!3303 (= lt!453 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!47))))

(declare-fun mapIsEmpty!125 () Bool)

(declare-fun mapRes!125 () Bool)

(assert (=> mapIsEmpty!125 mapRes!125))

(declare-fun b!3304 () Bool)

(declare-fun e!1535 () Bool)

(declare-fun tp_is_empty!113 () Bool)

(assert (=> b!3304 (= e!1535 tp_is_empty!113)))

(declare-fun b!3305 () Bool)

(declare-fun res!5112 () Bool)

(assert (=> b!3305 (=> (not res!5112) (not e!1537))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-datatypes ((V!327 0))(
  ( (V!328 (val!62 Int)) )
))
(declare-datatypes ((ValueCell!40 0))(
  ( (ValueCellFull!40 (v!1149 V!327)) (EmptyCell!40) )
))
(declare-datatypes ((array!163 0))(
  ( (array!164 (arr!75 (Array (_ BitVec 32) ValueCell!40)) (size!137 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!163)

(assert (=> b!3305 (= res!5112 (and (= (size!137 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!136 _keys!1806) (size!137 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!125 () Bool)

(declare-fun tp!365 () Bool)

(assert (=> mapNonEmpty!125 (= mapRes!125 (and tp!365 e!1535))))

(declare-fun mapRest!125 () (Array (_ BitVec 32) ValueCell!40))

(declare-fun mapValue!125 () ValueCell!40)

(declare-fun mapKey!125 () (_ BitVec 32))

(assert (=> mapNonEmpty!125 (= (arr!75 _values!1492) (store mapRest!125 mapKey!125 mapValue!125))))

(declare-fun res!5111 () Bool)

(assert (=> start!552 (=> (not res!5111) (not e!1537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!552 (= res!5111 (validMask!0 mask!2250))))

(assert (=> start!552 e!1537))

(assert (=> start!552 true))

(declare-fun e!1534 () Bool)

(declare-fun array_inv!53 (array!163) Bool)

(assert (=> start!552 (and (array_inv!53 _values!1492) e!1534)))

(declare-fun array_inv!54 (array!161) Bool)

(assert (=> start!552 (array_inv!54 _keys!1806)))

(declare-fun b!3306 () Bool)

(declare-fun res!5113 () Bool)

(assert (=> b!3306 (=> (not res!5113) (not e!1537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!161 (_ BitVec 32)) Bool)

(assert (=> b!3306 (= res!5113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3307 () Bool)

(declare-fun e!1536 () Bool)

(assert (=> b!3307 (= e!1534 (and e!1536 mapRes!125))))

(declare-fun condMapEmpty!125 () Bool)

(declare-fun mapDefault!125 () ValueCell!40)

