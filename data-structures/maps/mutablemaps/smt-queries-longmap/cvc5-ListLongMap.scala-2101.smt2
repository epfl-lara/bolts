; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35782 () Bool)

(assert start!35782)

(declare-fun b!359151 () Bool)

(declare-fun res!199692 () Bool)

(declare-fun e!219970 () Bool)

(assert (=> b!359151 (=> (not res!199692) (not e!219970))))

(declare-datatypes ((array!19975 0))(
  ( (array!19976 (arr!9478 (Array (_ BitVec 32) (_ BitVec 64))) (size!9830 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19975)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19975 (_ BitVec 32)) Bool)

(assert (=> b!359151 (= res!199692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359152 () Bool)

(declare-fun e!219971 () Bool)

(declare-fun tp_is_empty!8227 () Bool)

(assert (=> b!359152 (= e!219971 tp_is_empty!8227)))

(declare-fun mapNonEmpty!13848 () Bool)

(declare-fun mapRes!13848 () Bool)

(declare-fun tp!27915 () Bool)

(declare-fun e!219968 () Bool)

(assert (=> mapNonEmpty!13848 (= mapRes!13848 (and tp!27915 e!219968))))

(declare-datatypes ((V!11947 0))(
  ( (V!11948 (val!4158 Int)) )
))
(declare-datatypes ((ValueCell!3770 0))(
  ( (ValueCellFull!3770 (v!6348 V!11947)) (EmptyCell!3770) )
))
(declare-fun mapRest!13848 () (Array (_ BitVec 32) ValueCell!3770))

(declare-fun mapValue!13848 () ValueCell!3770)

(declare-fun mapKey!13848 () (_ BitVec 32))

(declare-datatypes ((array!19977 0))(
  ( (array!19978 (arr!9479 (Array (_ BitVec 32) ValueCell!3770)) (size!9831 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19977)

(assert (=> mapNonEmpty!13848 (= (arr!9479 _values!1208) (store mapRest!13848 mapKey!13848 mapValue!13848))))

(declare-fun b!359153 () Bool)

(declare-fun e!219967 () Bool)

(assert (=> b!359153 (= e!219967 (and e!219971 mapRes!13848))))

(declare-fun condMapEmpty!13848 () Bool)

(declare-fun mapDefault!13848 () ValueCell!3770)

