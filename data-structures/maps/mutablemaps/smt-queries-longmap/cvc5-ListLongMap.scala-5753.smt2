; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74374 () Bool)

(assert start!74374)

(declare-fun b_free!15109 () Bool)

(declare-fun b_next!15109 () Bool)

(assert (=> start!74374 (= b_free!15109 (not b_next!15109))))

(declare-fun tp!53003 () Bool)

(declare-fun b_and!24903 () Bool)

(assert (=> start!74374 (= tp!53003 b_and!24903)))

(declare-fun b!874829 () Bool)

(declare-fun res!594654 () Bool)

(declare-fun e!487068 () Bool)

(assert (=> b!874829 (=> (not res!594654) (not e!487068))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874829 (= res!594654 (validMask!0 mask!1196))))

(declare-fun b!874830 () Bool)

(declare-fun res!594658 () Bool)

(assert (=> b!874830 (=> (not res!594658) (not e!487068))))

(declare-datatypes ((array!50818 0))(
  ( (array!50819 (arr!24433 (Array (_ BitVec 32) (_ BitVec 64))) (size!24874 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50818)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50818 (_ BitVec 32)) Bool)

(assert (=> b!874830 (= res!594658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874831 () Bool)

(declare-fun e!487065 () Bool)

(declare-fun e!487069 () Bool)

(declare-fun mapRes!27638 () Bool)

(assert (=> b!874831 (= e!487065 (and e!487069 mapRes!27638))))

(declare-fun condMapEmpty!27638 () Bool)

(declare-datatypes ((V!28185 0))(
  ( (V!28186 (val!8724 Int)) )
))
(declare-datatypes ((ValueCell!8237 0))(
  ( (ValueCellFull!8237 (v!11149 V!28185)) (EmptyCell!8237) )
))
(declare-datatypes ((array!50820 0))(
  ( (array!50821 (arr!24434 (Array (_ BitVec 32) ValueCell!8237)) (size!24875 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50820)

(declare-fun mapDefault!27638 () ValueCell!8237)

