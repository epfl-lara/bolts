; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82258 () Bool)

(assert start!82258)

(declare-fun b_free!18503 () Bool)

(declare-fun b_next!18503 () Bool)

(assert (=> start!82258 (= b_free!18503 (not b_next!18503))))

(declare-fun tp!64470 () Bool)

(declare-fun b_and!30009 () Bool)

(assert (=> start!82258 (= tp!64470 b_and!30009)))

(declare-fun b!958319 () Bool)

(declare-fun e!540293 () Bool)

(declare-fun tp_is_empty!21209 () Bool)

(assert (=> b!958319 (= e!540293 tp_is_empty!21209)))

(declare-fun b!958320 () Bool)

(declare-fun res!641581 () Bool)

(declare-fun e!540289 () Bool)

(assert (=> b!958320 (=> (not res!641581) (not e!540289))))

(declare-datatypes ((array!58535 0))(
  ( (array!58536 (arr!28137 (Array (_ BitVec 32) (_ BitVec 64))) (size!28617 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58535)

(declare-datatypes ((List!19693 0))(
  ( (Nil!19690) (Cons!19689 (h!20851 (_ BitVec 64)) (t!28064 List!19693)) )
))
(declare-fun arrayNoDuplicates!0 (array!58535 (_ BitVec 32) List!19693) Bool)

(assert (=> b!958320 (= res!641581 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19690))))

(declare-fun b!958321 () Bool)

(declare-fun res!641583 () Bool)

(assert (=> b!958321 (=> (not res!641583) (not e!540289))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((V!33261 0))(
  ( (V!33262 (val!10655 Int)) )
))
(declare-datatypes ((ValueCell!10123 0))(
  ( (ValueCellFull!10123 (v!13212 V!33261)) (EmptyCell!10123) )
))
(declare-datatypes ((array!58537 0))(
  ( (array!58538 (arr!28138 (Array (_ BitVec 32) ValueCell!10123)) (size!28618 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58537)

(assert (=> b!958321 (= res!641583 (and (= (size!28618 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28617 _keys!1668) (size!28618 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33793 () Bool)

(declare-fun mapRes!33793 () Bool)

(assert (=> mapIsEmpty!33793 mapRes!33793))

(declare-fun res!641579 () Bool)

(assert (=> start!82258 (=> (not res!641579) (not e!540289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82258 (= res!641579 (validMask!0 mask!2088))))

(assert (=> start!82258 e!540289))

(assert (=> start!82258 true))

(assert (=> start!82258 tp_is_empty!21209))

(declare-fun array_inv!21765 (array!58535) Bool)

(assert (=> start!82258 (array_inv!21765 _keys!1668)))

(declare-fun e!540291 () Bool)

(declare-fun array_inv!21766 (array!58537) Bool)

(assert (=> start!82258 (and (array_inv!21766 _values!1386) e!540291)))

(assert (=> start!82258 tp!64470))

(declare-fun b!958322 () Bool)

(declare-fun res!641580 () Bool)

(assert (=> b!958322 (=> (not res!641580) (not e!540289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58535 (_ BitVec 32)) Bool)

(assert (=> b!958322 (= res!641580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958323 () Bool)

(declare-fun e!540292 () Bool)

(assert (=> b!958323 (= e!540291 (and e!540292 mapRes!33793))))

(declare-fun condMapEmpty!33793 () Bool)

(declare-fun mapDefault!33793 () ValueCell!10123)

