; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72268 () Bool)

(assert start!72268)

(declare-fun res!569398 () Bool)

(declare-fun e!467149 () Bool)

(assert (=> start!72268 (=> (not res!569398) (not e!467149))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46892 0))(
  ( (array!46893 (arr!22475 (Array (_ BitVec 32) (_ BitVec 64))) (size!22916 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46892)

(assert (=> start!72268 (= res!569398 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22916 _keys!868))))))

(assert (=> start!72268 e!467149))

(assert (=> start!72268 true))

(declare-fun array_inv!17894 (array!46892) Bool)

(assert (=> start!72268 (array_inv!17894 _keys!868)))

(declare-datatypes ((V!25465 0))(
  ( (V!25466 (val!7704 Int)) )
))
(declare-datatypes ((ValueCell!7217 0))(
  ( (ValueCellFull!7217 (v!10124 V!25465)) (EmptyCell!7217) )
))
(declare-datatypes ((array!46894 0))(
  ( (array!46895 (arr!22476 (Array (_ BitVec 32) ValueCell!7217)) (size!22917 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46894)

(declare-fun e!467148 () Bool)

(declare-fun array_inv!17895 (array!46894) Bool)

(assert (=> start!72268 (and (array_inv!17895 _values!688) e!467148)))

(declare-fun b!837028 () Bool)

(declare-fun res!569399 () Bool)

(assert (=> b!837028 (=> (not res!569399) (not e!467149))))

(assert (=> b!837028 (= res!569399 (and (bvsle #b00000000000000000000000000000000 (size!22916 _keys!868)) (bvslt (size!22916 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun b!837029 () Bool)

(declare-fun res!569400 () Bool)

(assert (=> b!837029 (=> (not res!569400) (not e!467149))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46892 (_ BitVec 32)) Bool)

(assert (=> b!837029 (= res!569400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837030 () Bool)

(declare-fun res!569401 () Bool)

(assert (=> b!837030 (=> (not res!569401) (not e!467149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837030 (= res!569401 (validMask!0 mask!1196))))

(declare-fun b!837031 () Bool)

(declare-fun e!467150 () Bool)

(declare-fun tp_is_empty!15313 () Bool)

(assert (=> b!837031 (= e!467150 tp_is_empty!15313)))

(declare-fun b!837032 () Bool)

(declare-datatypes ((List!16075 0))(
  ( (Nil!16072) (Cons!16071 (h!17202 (_ BitVec 64)) (t!22454 List!16075)) )
))
(declare-fun noDuplicate!1296 (List!16075) Bool)

(assert (=> b!837032 (= e!467149 (not (noDuplicate!1296 Nil!16072)))))

(declare-fun mapIsEmpty!24563 () Bool)

(declare-fun mapRes!24563 () Bool)

(assert (=> mapIsEmpty!24563 mapRes!24563))

(declare-fun mapNonEmpty!24563 () Bool)

(declare-fun tp!47558 () Bool)

(declare-fun e!467151 () Bool)

(assert (=> mapNonEmpty!24563 (= mapRes!24563 (and tp!47558 e!467151))))

(declare-fun mapKey!24563 () (_ BitVec 32))

(declare-fun mapRest!24563 () (Array (_ BitVec 32) ValueCell!7217))

(declare-fun mapValue!24563 () ValueCell!7217)

(assert (=> mapNonEmpty!24563 (= (arr!22476 _values!688) (store mapRest!24563 mapKey!24563 mapValue!24563))))

(declare-fun b!837033 () Bool)

(assert (=> b!837033 (= e!467148 (and e!467150 mapRes!24563))))

(declare-fun condMapEmpty!24563 () Bool)

(declare-fun mapDefault!24563 () ValueCell!7217)

