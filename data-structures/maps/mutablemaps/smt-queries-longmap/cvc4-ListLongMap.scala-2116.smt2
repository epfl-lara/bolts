; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35876 () Bool)

(assert start!35876)

(declare-fun b!360442 () Bool)

(declare-fun res!200565 () Bool)

(declare-fun e!220673 () Bool)

(assert (=> b!360442 (=> (not res!200565) (not e!220673))))

(declare-datatypes ((array!20163 0))(
  ( (array!20164 (arr!9572 (Array (_ BitVec 32) (_ BitVec 64))) (size!9924 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20163)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360442 (= res!200565 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360443 () Bool)

(declare-fun e!220675 () Bool)

(declare-fun e!220674 () Bool)

(declare-fun mapRes!13989 () Bool)

(assert (=> b!360443 (= e!220675 (and e!220674 mapRes!13989))))

(declare-fun condMapEmpty!13989 () Bool)

(declare-datatypes ((V!12071 0))(
  ( (V!12072 (val!4205 Int)) )
))
(declare-datatypes ((ValueCell!3817 0))(
  ( (ValueCellFull!3817 (v!6395 V!12071)) (EmptyCell!3817) )
))
(declare-datatypes ((array!20165 0))(
  ( (array!20166 (arr!9573 (Array (_ BitVec 32) ValueCell!3817)) (size!9925 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20165)

(declare-fun mapDefault!13989 () ValueCell!3817)

