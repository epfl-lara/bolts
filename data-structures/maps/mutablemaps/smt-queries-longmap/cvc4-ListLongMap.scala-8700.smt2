; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105674 () Bool)

(assert start!105674)

(declare-fun b_free!27239 () Bool)

(declare-fun b_next!27239 () Bool)

(assert (=> start!105674 (= b_free!27239 (not b_next!27239))))

(declare-fun tp!95241 () Bool)

(declare-fun b_and!45123 () Bool)

(assert (=> start!105674 (= tp!95241 b_and!45123)))

(declare-fun b!1258247 () Bool)

(declare-fun res!838729 () Bool)

(declare-fun e!715640 () Bool)

(assert (=> b!1258247 (=> (not res!838729) (not e!715640))))

(declare-datatypes ((array!81903 0))(
  ( (array!81904 (arr!39503 (Array (_ BitVec 32) (_ BitVec 64))) (size!40040 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81903)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81903 (_ BitVec 32)) Bool)

(assert (=> b!1258247 (= res!838729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258248 () Bool)

(declare-fun e!715639 () Bool)

(declare-fun e!715641 () Bool)

(declare-fun mapRes!50005 () Bool)

(assert (=> b!1258248 (= e!715639 (and e!715641 mapRes!50005))))

(declare-fun condMapEmpty!50005 () Bool)

(declare-datatypes ((V!48219 0))(
  ( (V!48220 (val!16133 Int)) )
))
(declare-datatypes ((ValueCell!15307 0))(
  ( (ValueCellFull!15307 (v!18835 V!48219)) (EmptyCell!15307) )
))
(declare-datatypes ((array!81905 0))(
  ( (array!81906 (arr!39504 (Array (_ BitVec 32) ValueCell!15307)) (size!40041 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81905)

(declare-fun mapDefault!50005 () ValueCell!15307)

