; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98162 () Bool)

(assert start!98162)

(declare-fun b_free!23827 () Bool)

(declare-fun b_next!23827 () Bool)

(assert (=> start!98162 (= b_free!23827 (not b_next!23827))))

(declare-fun tp!84186 () Bool)

(declare-fun b_and!38459 () Bool)

(assert (=> start!98162 (= tp!84186 b_and!38459)))

(declare-fun e!641902 () Bool)

(declare-datatypes ((V!42937 0))(
  ( (V!42938 (val!14235 Int)) )
))
(declare-datatypes ((tuple2!17996 0))(
  ( (tuple2!17997 (_1!9008 (_ BitVec 64)) (_2!9008 V!42937)) )
))
(declare-datatypes ((List!24821 0))(
  ( (Nil!24818) (Cons!24817 (h!26026 tuple2!17996) (t!35647 List!24821)) )
))
(declare-datatypes ((ListLongMap!15977 0))(
  ( (ListLongMap!15978 (toList!8004 List!24821)) )
))
(declare-fun call!47765 () ListLongMap!15977)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!47764 () ListLongMap!15977)

(declare-fun b!1127729 () Bool)

(declare-fun -!1140 (ListLongMap!15977 (_ BitVec 64)) ListLongMap!15977)

(assert (=> b!1127729 (= e!641902 (= call!47764 (-!1140 call!47765 k!934)))))

(declare-fun b!1127730 () Bool)

(declare-fun e!641898 () Bool)

(declare-fun tp_is_empty!28357 () Bool)

(assert (=> b!1127730 (= e!641898 tp_is_empty!28357)))

(declare-fun b!1127731 () Bool)

(declare-fun res!753705 () Bool)

(declare-fun e!641897 () Bool)

(assert (=> b!1127731 (=> (not res!753705) (not e!641897))))

(declare-datatypes ((array!73534 0))(
  ( (array!73535 (arr!35416 (Array (_ BitVec 32) (_ BitVec 64))) (size!35953 (_ BitVec 32))) )
))
(declare-fun lt!500685 () array!73534)

(declare-datatypes ((List!24822 0))(
  ( (Nil!24819) (Cons!24818 (h!26027 (_ BitVec 64)) (t!35648 List!24822)) )
))
(declare-fun arrayNoDuplicates!0 (array!73534 (_ BitVec 32) List!24822) Bool)

(assert (=> b!1127731 (= res!753705 (arrayNoDuplicates!0 lt!500685 #b00000000000000000000000000000000 Nil!24819))))

(declare-fun b!1127732 () Bool)

(declare-fun e!641894 () Bool)

(declare-fun mapRes!44353 () Bool)

(assert (=> b!1127732 (= e!641894 (and e!641898 mapRes!44353))))

(declare-fun condMapEmpty!44353 () Bool)

(declare-datatypes ((ValueCell!13469 0))(
  ( (ValueCellFull!13469 (v!16869 V!42937)) (EmptyCell!13469) )
))
(declare-datatypes ((array!73536 0))(
  ( (array!73537 (arr!35417 (Array (_ BitVec 32) ValueCell!13469)) (size!35954 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73536)

(declare-fun mapDefault!44353 () ValueCell!13469)

