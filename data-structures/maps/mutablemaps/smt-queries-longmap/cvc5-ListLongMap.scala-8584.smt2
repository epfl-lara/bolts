; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104770 () Bool)

(assert start!104770)

(declare-fun b_free!26539 () Bool)

(declare-fun b_next!26539 () Bool)

(assert (=> start!104770 (= b_free!26539 (not b_next!26539))))

(declare-fun tp!93108 () Bool)

(declare-fun b_and!44317 () Bool)

(assert (=> start!104770 (= tp!93108 b_and!44317)))

(declare-fun b!1248451 () Bool)

(declare-fun res!832979 () Bool)

(declare-fun e!708473 () Bool)

(assert (=> b!1248451 (=> (not res!832979) (not e!708473))))

(declare-datatypes ((array!80551 0))(
  ( (array!80552 (arr!38838 (Array (_ BitVec 32) (_ BitVec 64))) (size!39375 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80551)

(declare-datatypes ((List!27743 0))(
  ( (Nil!27740) (Cons!27739 (h!28948 (_ BitVec 64)) (t!41221 List!27743)) )
))
(declare-fun arrayNoDuplicates!0 (array!80551 (_ BitVec 32) List!27743) Bool)

(assert (=> b!1248451 (= res!832979 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27740))))

(declare-fun b!1248452 () Bool)

(declare-fun res!832977 () Bool)

(assert (=> b!1248452 (=> (not res!832977) (not e!708473))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80551 (_ BitVec 32)) Bool)

(assert (=> b!1248452 (= res!832977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248453 () Bool)

(declare-fun e!708476 () Bool)

(declare-fun e!708474 () Bool)

(declare-fun mapRes!48922 () Bool)

(assert (=> b!1248453 (= e!708476 (and e!708474 mapRes!48922))))

(declare-fun condMapEmpty!48922 () Bool)

(declare-datatypes ((V!47287 0))(
  ( (V!47288 (val!15783 Int)) )
))
(declare-datatypes ((ValueCell!14957 0))(
  ( (ValueCellFull!14957 (v!18479 V!47287)) (EmptyCell!14957) )
))
(declare-datatypes ((array!80553 0))(
  ( (array!80554 (arr!38839 (Array (_ BitVec 32) ValueCell!14957)) (size!39376 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80553)

(declare-fun mapDefault!48922 () ValueCell!14957)

