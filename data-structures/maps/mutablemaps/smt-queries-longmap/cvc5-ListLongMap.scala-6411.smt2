; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82290 () Bool)

(assert start!82290)

(declare-fun b_free!18535 () Bool)

(declare-fun b_next!18535 () Bool)

(assert (=> start!82290 (= b_free!18535 (not b_next!18535))))

(declare-fun tp!64566 () Bool)

(declare-fun b_and!30041 () Bool)

(assert (=> start!82290 (= tp!64566 b_and!30041)))

(declare-fun b!958762 () Bool)

(declare-fun res!641883 () Bool)

(declare-fun e!540529 () Bool)

(assert (=> b!958762 (=> (not res!641883) (not e!540529))))

(declare-datatypes ((array!58595 0))(
  ( (array!58596 (arr!28167 (Array (_ BitVec 32) (_ BitVec 64))) (size!28647 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58595)

(declare-datatypes ((List!19713 0))(
  ( (Nil!19710) (Cons!19709 (h!20871 (_ BitVec 64)) (t!28084 List!19713)) )
))
(declare-fun arrayNoDuplicates!0 (array!58595 (_ BitVec 32) List!19713) Bool)

(assert (=> b!958762 (= res!641883 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19710))))

(declare-fun b!958763 () Bool)

(declare-fun e!540531 () Bool)

(declare-fun e!540530 () Bool)

(declare-fun mapRes!33841 () Bool)

(assert (=> b!958763 (= e!540531 (and e!540530 mapRes!33841))))

(declare-fun condMapEmpty!33841 () Bool)

(declare-datatypes ((V!33305 0))(
  ( (V!33306 (val!10671 Int)) )
))
(declare-datatypes ((ValueCell!10139 0))(
  ( (ValueCellFull!10139 (v!13228 V!33305)) (EmptyCell!10139) )
))
(declare-datatypes ((array!58597 0))(
  ( (array!58598 (arr!28168 (Array (_ BitVec 32) ValueCell!10139)) (size!28648 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58597)

(declare-fun mapDefault!33841 () ValueCell!10139)

