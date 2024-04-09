; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81940 () Bool)

(assert start!81940)

(declare-fun b_free!18407 () Bool)

(declare-fun b_next!18407 () Bool)

(assert (=> start!81940 (= b_free!18407 (not b_next!18407))))

(declare-fun tp!63921 () Bool)

(declare-fun b_and!29911 () Bool)

(assert (=> start!81940 (= tp!63921 b_and!29911)))

(declare-fun b!955257 () Bool)

(declare-fun res!639809 () Bool)

(declare-fun e!538189 () Bool)

(assert (=> b!955257 (=> (not res!639809) (not e!538189))))

(declare-datatypes ((array!58027 0))(
  ( (array!58028 (arr!27889 (Array (_ BitVec 32) (_ BitVec 64))) (size!28369 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58027)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955257 (= res!639809 (validKeyInArray!0 (select (arr!27889 _keys!1441) i!735)))))

(declare-fun b!955258 () Bool)

(declare-fun res!639805 () Bool)

(assert (=> b!955258 (=> (not res!639805) (not e!538189))))

(assert (=> b!955258 (= res!639805 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28369 _keys!1441))))))

(declare-fun mapNonEmpty!33388 () Bool)

(declare-fun mapRes!33388 () Bool)

(declare-fun tp!63922 () Bool)

(declare-fun e!538188 () Bool)

(assert (=> mapNonEmpty!33388 (= mapRes!33388 (and tp!63922 e!538188))))

(declare-datatypes ((V!32917 0))(
  ( (V!32918 (val!10526 Int)) )
))
(declare-datatypes ((ValueCell!9994 0))(
  ( (ValueCellFull!9994 (v!13081 V!32917)) (EmptyCell!9994) )
))
(declare-fun mapValue!33388 () ValueCell!9994)

(declare-datatypes ((array!58029 0))(
  ( (array!58030 (arr!27890 (Array (_ BitVec 32) ValueCell!9994)) (size!28370 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58029)

(declare-fun mapRest!33388 () (Array (_ BitVec 32) ValueCell!9994))

(declare-fun mapKey!33388 () (_ BitVec 32))

(assert (=> mapNonEmpty!33388 (= (arr!27890 _values!1197) (store mapRest!33388 mapKey!33388 mapValue!33388))))

(declare-fun b!955259 () Bool)

(declare-fun e!538191 () Bool)

(declare-fun e!538187 () Bool)

(assert (=> b!955259 (= e!538191 (and e!538187 mapRes!33388))))

(declare-fun condMapEmpty!33388 () Bool)

(declare-fun mapDefault!33388 () ValueCell!9994)

