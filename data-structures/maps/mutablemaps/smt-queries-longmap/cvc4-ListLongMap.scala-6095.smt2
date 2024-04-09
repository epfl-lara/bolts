; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78710 () Bool)

(assert start!78710)

(declare-fun b_free!16895 () Bool)

(declare-fun b_next!16895 () Bool)

(assert (=> start!78710 (= b_free!16895 (not b_next!16895))))

(declare-fun tp!59126 () Bool)

(declare-fun b_and!27545 () Bool)

(assert (=> start!78710 (= tp!59126 b_and!27545)))

(declare-fun b!917277 () Bool)

(declare-fun res!618504 () Bool)

(declare-fun e!515008 () Bool)

(assert (=> b!917277 (=> (not res!618504) (not e!515008))))

(declare-datatypes ((array!54798 0))(
  ( (array!54799 (arr!26340 (Array (_ BitVec 32) (_ BitVec 64))) (size!26800 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54798)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54798 (_ BitVec 32)) Bool)

(assert (=> b!917277 (= res!618504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917278 () Bool)

(declare-fun e!515010 () Bool)

(declare-fun e!515006 () Bool)

(declare-fun mapRes!30861 () Bool)

(assert (=> b!917278 (= e!515010 (and e!515006 mapRes!30861))))

(declare-fun condMapEmpty!30861 () Bool)

(declare-datatypes ((V!30835 0))(
  ( (V!30836 (val!9752 Int)) )
))
(declare-datatypes ((ValueCell!9220 0))(
  ( (ValueCellFull!9220 (v!12270 V!30835)) (EmptyCell!9220) )
))
(declare-datatypes ((array!54800 0))(
  ( (array!54801 (arr!26341 (Array (_ BitVec 32) ValueCell!9220)) (size!26801 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54800)

(declare-fun mapDefault!30861 () ValueCell!9220)

