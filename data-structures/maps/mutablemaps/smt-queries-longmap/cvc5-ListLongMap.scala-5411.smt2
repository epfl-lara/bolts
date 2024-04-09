; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72248 () Bool)

(assert start!72248)

(declare-fun res!569317 () Bool)

(declare-fun e!467046 () Bool)

(assert (=> start!72248 (=> (not res!569317) (not e!467046))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46870 0))(
  ( (array!46871 (arr!22465 (Array (_ BitVec 32) (_ BitVec 64))) (size!22906 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46870)

(assert (=> start!72248 (= res!569317 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22906 _keys!868))))))

(assert (=> start!72248 e!467046))

(assert (=> start!72248 true))

(declare-fun array_inv!17888 (array!46870) Bool)

(assert (=> start!72248 (array_inv!17888 _keys!868)))

(declare-datatypes ((V!25449 0))(
  ( (V!25450 (val!7698 Int)) )
))
(declare-datatypes ((ValueCell!7211 0))(
  ( (ValueCellFull!7211 (v!10118 V!25449)) (EmptyCell!7211) )
))
(declare-datatypes ((array!46872 0))(
  ( (array!46873 (arr!22466 (Array (_ BitVec 32) ValueCell!7211)) (size!22907 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46872)

(declare-fun e!467043 () Bool)

(declare-fun array_inv!17889 (array!46872) Bool)

(assert (=> start!72248 (and (array_inv!17889 _values!688) e!467043)))

(declare-fun b!836880 () Bool)

(declare-fun res!569319 () Bool)

(assert (=> b!836880 (=> (not res!569319) (not e!467046))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836880 (= res!569319 (validMask!0 mask!1196))))

(declare-fun b!836881 () Bool)

(declare-fun e!467045 () Bool)

(declare-fun mapRes!24542 () Bool)

(assert (=> b!836881 (= e!467043 (and e!467045 mapRes!24542))))

(declare-fun condMapEmpty!24542 () Bool)

(declare-fun mapDefault!24542 () ValueCell!7211)

