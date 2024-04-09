; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84294 () Bool)

(assert start!84294)

(declare-fun b!985717 () Bool)

(declare-fun res!659705 () Bool)

(declare-fun e!555677 () Bool)

(assert (=> b!985717 (=> (not res!659705) (not e!555677))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35741 0))(
  ( (V!35742 (val!11585 Int)) )
))
(declare-datatypes ((ValueCell!11053 0))(
  ( (ValueCellFull!11053 (v!14147 V!35741)) (EmptyCell!11053) )
))
(declare-datatypes ((array!62101 0))(
  ( (array!62102 (arr!29904 (Array (_ BitVec 32) ValueCell!11053)) (size!30384 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62101)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62103 0))(
  ( (array!62104 (arr!29905 (Array (_ BitVec 32) (_ BitVec 64))) (size!30385 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62103)

(assert (=> b!985717 (= res!659705 (and (= (size!30384 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30385 _keys!1544) (size!30384 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985718 () Bool)

(declare-fun res!659706 () Bool)

(assert (=> b!985718 (=> (not res!659706) (not e!555677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62103 (_ BitVec 32)) Bool)

(assert (=> b!985718 (= res!659706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985719 () Bool)

(declare-fun e!555680 () Bool)

(declare-fun tp_is_empty!23069 () Bool)

(assert (=> b!985719 (= e!555680 tp_is_empty!23069)))

(declare-fun res!659704 () Bool)

(assert (=> start!84294 (=> (not res!659704) (not e!555677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84294 (= res!659704 (validMask!0 mask!1948))))

(assert (=> start!84294 e!555677))

(assert (=> start!84294 true))

(declare-fun e!555676 () Bool)

(declare-fun array_inv!22979 (array!62101) Bool)

(assert (=> start!84294 (and (array_inv!22979 _values!1278) e!555676)))

(declare-fun array_inv!22980 (array!62103) Bool)

(assert (=> start!84294 (array_inv!22980 _keys!1544)))

(declare-fun b!985720 () Bool)

(declare-fun mapRes!36632 () Bool)

(assert (=> b!985720 (= e!555676 (and e!555680 mapRes!36632))))

(declare-fun condMapEmpty!36632 () Bool)

(declare-fun mapDefault!36632 () ValueCell!11053)

