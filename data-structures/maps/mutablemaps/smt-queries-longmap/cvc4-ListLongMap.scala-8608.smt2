; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104932 () Bool)

(assert start!104932)

(declare-fun b_free!26687 () Bool)

(declare-fun b_next!26687 () Bool)

(assert (=> start!104932 (= b_free!26687 (not b_next!26687))))

(declare-fun tp!93554 () Bool)

(declare-fun b_and!44473 () Bool)

(assert (=> start!104932 (= tp!93554 b_and!44473)))

(declare-fun b!1250169 () Bool)

(declare-fun res!833975 () Bool)

(declare-fun e!709717 () Bool)

(assert (=> b!1250169 (=> (not res!833975) (not e!709717))))

(declare-datatypes ((array!80829 0))(
  ( (array!80830 (arr!38976 (Array (_ BitVec 32) (_ BitVec 64))) (size!39513 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80829)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80829 (_ BitVec 32)) Bool)

(assert (=> b!1250169 (= res!833975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250170 () Bool)

(declare-fun e!709721 () Bool)

(assert (=> b!1250170 (= e!709721 true)))

(declare-datatypes ((V!47483 0))(
  ( (V!47484 (val!15857 Int)) )
))
(declare-datatypes ((tuple2!20574 0))(
  ( (tuple2!20575 (_1!10297 (_ BitVec 64)) (_2!10297 V!47483)) )
))
(declare-datatypes ((List!27833 0))(
  ( (Nil!27830) (Cons!27829 (h!29038 tuple2!20574) (t!41313 List!27833)) )
))
(declare-datatypes ((ListLongMap!18459 0))(
  ( (ListLongMap!18460 (toList!9245 List!27833)) )
))
(declare-fun lt!564071 () ListLongMap!18459)

(declare-fun -!2014 (ListLongMap!18459 (_ BitVec 64)) ListLongMap!18459)

(assert (=> b!1250170 (= (-!2014 lt!564071 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564071)))

(declare-datatypes ((Unit!41471 0))(
  ( (Unit!41472) )
))
(declare-fun lt!564070 () Unit!41471)

(declare-fun removeNotPresentStillSame!81 (ListLongMap!18459 (_ BitVec 64)) Unit!41471)

(assert (=> b!1250170 (= lt!564070 (removeNotPresentStillSame!81 lt!564071 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250171 () Bool)

(declare-fun res!833978 () Bool)

(assert (=> b!1250171 (=> (not res!833978) (not e!709717))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15031 0))(
  ( (ValueCellFull!15031 (v!18553 V!47483)) (EmptyCell!15031) )
))
(declare-datatypes ((array!80831 0))(
  ( (array!80832 (arr!38977 (Array (_ BitVec 32) ValueCell!15031)) (size!39514 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80831)

(assert (=> b!1250171 (= res!833978 (and (= (size!39514 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39513 _keys!1118) (size!39514 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49147 () Bool)

(declare-fun mapRes!49147 () Bool)

(assert (=> mapIsEmpty!49147 mapRes!49147))

(declare-fun b!1250173 () Bool)

(declare-fun e!709720 () Bool)

(declare-fun e!709722 () Bool)

(assert (=> b!1250173 (= e!709720 (and e!709722 mapRes!49147))))

(declare-fun condMapEmpty!49147 () Bool)

(declare-fun mapDefault!49147 () ValueCell!15031)

