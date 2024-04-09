; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84300 () Bool)

(assert start!84300)

(declare-fun b!985771 () Bool)

(declare-fun e!555722 () Bool)

(declare-fun tp_is_empty!23075 () Bool)

(assert (=> b!985771 (= e!555722 tp_is_empty!23075)))

(declare-fun res!659733 () Bool)

(declare-fun e!555725 () Bool)

(assert (=> start!84300 (=> (not res!659733) (not e!555725))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84300 (= res!659733 (validMask!0 mask!1948))))

(assert (=> start!84300 e!555725))

(assert (=> start!84300 true))

(declare-datatypes ((V!35749 0))(
  ( (V!35750 (val!11588 Int)) )
))
(declare-datatypes ((ValueCell!11056 0))(
  ( (ValueCellFull!11056 (v!14150 V!35749)) (EmptyCell!11056) )
))
(declare-datatypes ((array!62113 0))(
  ( (array!62114 (arr!29910 (Array (_ BitVec 32) ValueCell!11056)) (size!30390 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62113)

(declare-fun e!555724 () Bool)

(declare-fun array_inv!22985 (array!62113) Bool)

(assert (=> start!84300 (and (array_inv!22985 _values!1278) e!555724)))

(declare-datatypes ((array!62115 0))(
  ( (array!62116 (arr!29911 (Array (_ BitVec 32) (_ BitVec 64))) (size!30391 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62115)

(declare-fun array_inv!22986 (array!62115) Bool)

(assert (=> start!84300 (array_inv!22986 _keys!1544)))

(declare-fun b!985772 () Bool)

(declare-fun res!659732 () Bool)

(assert (=> b!985772 (=> (not res!659732) (not e!555725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62115 (_ BitVec 32)) Bool)

(assert (=> b!985772 (= res!659732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36641 () Bool)

(declare-fun mapRes!36641 () Bool)

(declare-fun tp!69497 () Bool)

(declare-fun e!555723 () Bool)

(assert (=> mapNonEmpty!36641 (= mapRes!36641 (and tp!69497 e!555723))))

(declare-fun mapRest!36641 () (Array (_ BitVec 32) ValueCell!11056))

(declare-fun mapValue!36641 () ValueCell!11056)

(declare-fun mapKey!36641 () (_ BitVec 32))

(assert (=> mapNonEmpty!36641 (= (arr!29910 _values!1278) (store mapRest!36641 mapKey!36641 mapValue!36641))))

(declare-fun b!985773 () Bool)

(declare-fun res!659731 () Bool)

(assert (=> b!985773 (=> (not res!659731) (not e!555725))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985773 (= res!659731 (and (= (size!30390 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30391 _keys!1544) (size!30390 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36641 () Bool)

(assert (=> mapIsEmpty!36641 mapRes!36641))

(declare-fun b!985774 () Bool)

(assert (=> b!985774 (= e!555724 (and e!555722 mapRes!36641))))

(declare-fun condMapEmpty!36641 () Bool)

(declare-fun mapDefault!36641 () ValueCell!11056)

