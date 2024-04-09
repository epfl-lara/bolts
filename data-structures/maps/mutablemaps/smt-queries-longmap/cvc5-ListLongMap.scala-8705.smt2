; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105700 () Bool)

(assert start!105700)

(declare-fun b_free!27265 () Bool)

(declare-fun b_next!27265 () Bool)

(assert (=> start!105700 (= b_free!27265 (not b_next!27265))))

(declare-fun tp!95319 () Bool)

(declare-fun b_and!45149 () Bool)

(assert (=> start!105700 (= tp!95319 b_and!45149)))

(declare-fun b!1258559 () Bool)

(declare-fun res!838927 () Bool)

(declare-fun e!715874 () Bool)

(assert (=> b!1258559 (=> (not res!838927) (not e!715874))))

(declare-datatypes ((array!81949 0))(
  ( (array!81950 (arr!39526 (Array (_ BitVec 32) (_ BitVec 64))) (size!40063 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81949)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81949 (_ BitVec 32)) Bool)

(assert (=> b!1258559 (= res!838927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50044 () Bool)

(declare-fun mapRes!50044 () Bool)

(assert (=> mapIsEmpty!50044 mapRes!50044))

(declare-fun b!1258560 () Bool)

(declare-fun e!715873 () Bool)

(declare-fun e!715875 () Bool)

(assert (=> b!1258560 (= e!715873 (and e!715875 mapRes!50044))))

(declare-fun condMapEmpty!50044 () Bool)

(declare-datatypes ((V!48255 0))(
  ( (V!48256 (val!16146 Int)) )
))
(declare-datatypes ((ValueCell!15320 0))(
  ( (ValueCellFull!15320 (v!18848 V!48255)) (EmptyCell!15320) )
))
(declare-datatypes ((array!81951 0))(
  ( (array!81952 (arr!39527 (Array (_ BitVec 32) ValueCell!15320)) (size!40064 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81951)

(declare-fun mapDefault!50044 () ValueCell!15320)

