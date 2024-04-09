; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35828 () Bool)

(assert start!35828)

(declare-fun b!359650 () Bool)

(declare-fun e!220312 () Bool)

(declare-fun tp_is_empty!8273 () Bool)

(assert (=> b!359650 (= e!220312 tp_is_empty!8273)))

(declare-fun b!359651 () Bool)

(declare-fun res!199990 () Bool)

(declare-fun e!220313 () Bool)

(assert (=> b!359651 (=> (not res!199990) (not e!220313))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359651 (= res!199990 (validKeyInArray!0 k!1077))))

(declare-fun b!359652 () Bool)

(declare-fun res!199984 () Bool)

(assert (=> b!359652 (=> (not res!199984) (not e!220313))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!20067 0))(
  ( (array!20068 (arr!9524 (Array (_ BitVec 32) (_ BitVec 64))) (size!9876 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20067)

(assert (=> b!359652 (= res!199984 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9876 _keys!1456))))))

(declare-fun b!359653 () Bool)

(declare-fun res!199983 () Bool)

(assert (=> b!359653 (=> (not res!199983) (not e!220313))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!12007 0))(
  ( (V!12008 (val!4181 Int)) )
))
(declare-datatypes ((ValueCell!3793 0))(
  ( (ValueCellFull!3793 (v!6371 V!12007)) (EmptyCell!3793) )
))
(declare-datatypes ((array!20069 0))(
  ( (array!20070 (arr!9525 (Array (_ BitVec 32) ValueCell!3793)) (size!9877 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20069)

(assert (=> b!359653 (= res!199983 (and (= (size!9877 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9876 _keys!1456) (size!9877 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359654 () Bool)

(declare-fun e!220314 () Bool)

(declare-fun e!220315 () Bool)

(declare-fun mapRes!13917 () Bool)

(assert (=> b!359654 (= e!220314 (and e!220315 mapRes!13917))))

(declare-fun condMapEmpty!13917 () Bool)

(declare-fun mapDefault!13917 () ValueCell!3793)

