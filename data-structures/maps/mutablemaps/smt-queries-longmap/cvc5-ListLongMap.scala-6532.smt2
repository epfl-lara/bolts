; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83104 () Bool)

(assert start!83104)

(declare-fun b!968978 () Bool)

(declare-fun e!546264 () Bool)

(assert (=> b!968978 (= e!546264 false)))

(declare-fun lt!431545 () Bool)

(declare-datatypes ((array!59983 0))(
  ( (array!59984 (arr!28851 (Array (_ BitVec 32) (_ BitVec 64))) (size!29331 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59983)

(declare-datatypes ((List!20135 0))(
  ( (Nil!20132) (Cons!20131 (h!21293 (_ BitVec 64)) (t!28506 List!20135)) )
))
(declare-fun arrayNoDuplicates!0 (array!59983 (_ BitVec 32) List!20135) Bool)

(assert (=> b!968978 (= lt!431545 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20132))))

(declare-fun mapNonEmpty!34960 () Bool)

(declare-fun mapRes!34960 () Bool)

(declare-fun tp!66529 () Bool)

(declare-fun e!546263 () Bool)

(assert (=> mapNonEmpty!34960 (= mapRes!34960 (and tp!66529 e!546263))))

(declare-datatypes ((V!34273 0))(
  ( (V!34274 (val!11034 Int)) )
))
(declare-datatypes ((ValueCell!10502 0))(
  ( (ValueCellFull!10502 (v!13593 V!34273)) (EmptyCell!10502) )
))
(declare-datatypes ((array!59985 0))(
  ( (array!59986 (arr!28852 (Array (_ BitVec 32) ValueCell!10502)) (size!29332 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59985)

(declare-fun mapValue!34960 () ValueCell!10502)

(declare-fun mapRest!34960 () (Array (_ BitVec 32) ValueCell!10502))

(declare-fun mapKey!34960 () (_ BitVec 32))

(assert (=> mapNonEmpty!34960 (= (arr!28852 _values!1425) (store mapRest!34960 mapKey!34960 mapValue!34960))))

(declare-fun mapIsEmpty!34960 () Bool)

(assert (=> mapIsEmpty!34960 mapRes!34960))

(declare-fun b!968979 () Bool)

(declare-fun res!648698 () Bool)

(assert (=> b!968979 (=> (not res!648698) (not e!546264))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968979 (= res!648698 (and (= (size!29332 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29331 _keys!1717) (size!29332 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968980 () Bool)

(declare-fun e!546266 () Bool)

(declare-fun e!546267 () Bool)

(assert (=> b!968980 (= e!546266 (and e!546267 mapRes!34960))))

(declare-fun condMapEmpty!34960 () Bool)

(declare-fun mapDefault!34960 () ValueCell!10502)

