; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105768 () Bool)

(assert start!105768)

(declare-fun b_free!27317 () Bool)

(declare-fun b_next!27317 () Bool)

(assert (=> start!105768 (= b_free!27317 (not b_next!27317))))

(declare-fun tp!95477 () Bool)

(declare-fun b_and!45211 () Bool)

(assert (=> start!105768 (= tp!95477 b_and!45211)))

(declare-fun mapIsEmpty!50125 () Bool)

(declare-fun mapRes!50125 () Bool)

(assert (=> mapIsEmpty!50125 mapRes!50125))

(declare-fun b!1259402 () Bool)

(declare-fun res!839447 () Bool)

(declare-fun e!716510 () Bool)

(assert (=> b!1259402 (=> (not res!839447) (not e!716510))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48323 0))(
  ( (V!48324 (val!16172 Int)) )
))
(declare-datatypes ((ValueCell!15346 0))(
  ( (ValueCellFull!15346 (v!18874 V!48323)) (EmptyCell!15346) )
))
(declare-datatypes ((array!82051 0))(
  ( (array!82052 (arr!39576 (Array (_ BitVec 32) ValueCell!15346)) (size!40113 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82051)

(declare-datatypes ((array!82053 0))(
  ( (array!82054 (arr!39577 (Array (_ BitVec 32) (_ BitVec 64))) (size!40114 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82053)

(assert (=> b!1259402 (= res!839447 (and (= (size!40113 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40114 _keys!1118) (size!40113 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259403 () Bool)

(declare-fun e!716508 () Bool)

(declare-fun tp_is_empty!32219 () Bool)

(assert (=> b!1259403 (= e!716508 tp_is_empty!32219)))

(declare-fun b!1259404 () Bool)

(declare-datatypes ((tuple2!21066 0))(
  ( (tuple2!21067 (_1!10543 (_ BitVec 64)) (_2!10543 V!48323)) )
))
(declare-datatypes ((List!28294 0))(
  ( (Nil!28291) (Cons!28290 (h!29499 tuple2!21066) (t!41796 List!28294)) )
))
(declare-datatypes ((ListLongMap!18951 0))(
  ( (ListLongMap!18952 (toList!9491 List!28294)) )
))
(declare-fun lt!570077 () ListLongMap!18951)

(declare-fun lt!570075 () tuple2!21066)

(declare-fun lt!570081 () ListLongMap!18951)

(declare-fun e!716504 () Bool)

(declare-fun +!4189 (ListLongMap!18951 tuple2!21066) ListLongMap!18951)

(assert (=> b!1259404 (= e!716504 (= lt!570081 (+!4189 lt!570077 lt!570075)))))

(declare-fun b!1259405 () Bool)

(declare-fun e!716506 () Bool)

(declare-fun e!716505 () Bool)

(assert (=> b!1259405 (= e!716506 (and e!716505 mapRes!50125))))

(declare-fun condMapEmpty!50125 () Bool)

(declare-fun mapDefault!50125 () ValueCell!15346)

