; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105728 () Bool)

(assert start!105728)

(declare-fun b_free!27277 () Bool)

(declare-fun b_next!27277 () Bool)

(assert (=> start!105728 (= b_free!27277 (not b_next!27277))))

(declare-fun tp!95358 () Bool)

(declare-fun b_and!45171 () Bool)

(assert (=> start!105728 (= tp!95358 b_and!45171)))

(declare-fun b!1258862 () Bool)

(declare-fun res!839086 () Bool)

(declare-fun e!716088 () Bool)

(assert (=> b!1258862 (=> (not res!839086) (not e!716088))))

(declare-datatypes ((array!81975 0))(
  ( (array!81976 (arr!39538 (Array (_ BitVec 32) (_ BitVec 64))) (size!40075 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81975)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81975 (_ BitVec 32)) Bool)

(assert (=> b!1258862 (= res!839086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun e!716087 () Bool)

(declare-datatypes ((V!48271 0))(
  ( (V!48272 (val!16152 Int)) )
))
(declare-datatypes ((tuple2!21032 0))(
  ( (tuple2!21033 (_1!10526 (_ BitVec 64)) (_2!10526 V!48271)) )
))
(declare-datatypes ((List!28262 0))(
  ( (Nil!28259) (Cons!28258 (h!29467 tuple2!21032) (t!41764 List!28262)) )
))
(declare-datatypes ((ListLongMap!18917 0))(
  ( (ListLongMap!18918 (toList!9474 List!28262)) )
))
(declare-fun lt!569474 () ListLongMap!18917)

(declare-fun lt!569473 () ListLongMap!18917)

(declare-fun b!1258863 () Bool)

(declare-fun lt!569480 () tuple2!21032)

(declare-fun +!4173 (ListLongMap!18917 tuple2!21032) ListLongMap!18917)

(assert (=> b!1258863 (= e!716087 (= lt!569473 (+!4173 lt!569474 lt!569480)))))

(declare-fun b!1258864 () Bool)

(declare-fun res!839088 () Bool)

(assert (=> b!1258864 (=> (not res!839088) (not e!716088))))

(declare-datatypes ((List!28263 0))(
  ( (Nil!28260) (Cons!28259 (h!29468 (_ BitVec 64)) (t!41765 List!28263)) )
))
(declare-fun arrayNoDuplicates!0 (array!81975 (_ BitVec 32) List!28263) Bool)

(assert (=> b!1258864 (= res!839088 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28260))))

(declare-fun b!1258865 () Bool)

(declare-fun e!716084 () Bool)

(declare-fun e!716086 () Bool)

(declare-fun mapRes!50065 () Bool)

(assert (=> b!1258865 (= e!716084 (and e!716086 mapRes!50065))))

(declare-fun condMapEmpty!50065 () Bool)

(declare-datatypes ((ValueCell!15326 0))(
  ( (ValueCellFull!15326 (v!18854 V!48271)) (EmptyCell!15326) )
))
(declare-datatypes ((array!81977 0))(
  ( (array!81978 (arr!39539 (Array (_ BitVec 32) ValueCell!15326)) (size!40076 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81977)

(declare-fun mapDefault!50065 () ValueCell!15326)

