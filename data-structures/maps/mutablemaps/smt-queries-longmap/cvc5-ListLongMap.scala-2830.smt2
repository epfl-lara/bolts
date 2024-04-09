; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40952 () Bool)

(assert start!40952)

(declare-fun b_free!10879 () Bool)

(declare-fun b_next!10879 () Bool)

(assert (=> start!40952 (= b_free!10879 (not b_next!10879))))

(declare-fun tp!38463 () Bool)

(declare-fun b_and!19039 () Bool)

(assert (=> start!40952 (= tp!38463 b_and!19039)))

(declare-fun b!455207 () Bool)

(declare-fun e!266160 () Bool)

(declare-fun tp_is_empty!12217 () Bool)

(assert (=> b!455207 (= e!266160 tp_is_empty!12217)))

(declare-fun b!455208 () Bool)

(declare-fun res!271502 () Bool)

(declare-fun e!266157 () Bool)

(assert (=> b!455208 (=> (not res!271502) (not e!266157))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455208 (= res!271502 (bvsle from!863 i!563))))

(declare-fun b!455209 () Bool)

(declare-fun res!271494 () Bool)

(declare-fun e!266158 () Bool)

(assert (=> b!455209 (=> (not res!271494) (not e!266158))))

(declare-datatypes ((array!28203 0))(
  ( (array!28204 (arr!13542 (Array (_ BitVec 32) (_ BitVec 64))) (size!13894 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28203)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455209 (= res!271494 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19966 () Bool)

(declare-fun mapRes!19966 () Bool)

(assert (=> mapIsEmpty!19966 mapRes!19966))

(declare-fun b!455210 () Bool)

(declare-fun res!271500 () Bool)

(assert (=> b!455210 (=> (not res!271500) (not e!266158))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17395 0))(
  ( (V!17396 (val!6153 Int)) )
))
(declare-datatypes ((ValueCell!5765 0))(
  ( (ValueCellFull!5765 (v!8415 V!17395)) (EmptyCell!5765) )
))
(declare-datatypes ((array!28205 0))(
  ( (array!28206 (arr!13543 (Array (_ BitVec 32) ValueCell!5765)) (size!13895 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28205)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!455210 (= res!271500 (and (= (size!13895 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13894 _keys!709) (size!13895 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455211 () Bool)

(declare-fun res!271501 () Bool)

(assert (=> b!455211 (=> (not res!271501) (not e!266158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455211 (= res!271501 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19966 () Bool)

(declare-fun tp!38464 () Bool)

(declare-fun e!266162 () Bool)

(assert (=> mapNonEmpty!19966 (= mapRes!19966 (and tp!38464 e!266162))))

(declare-fun mapRest!19966 () (Array (_ BitVec 32) ValueCell!5765))

(declare-fun mapKey!19966 () (_ BitVec 32))

(declare-fun mapValue!19966 () ValueCell!5765)

(assert (=> mapNonEmpty!19966 (= (arr!13543 _values!549) (store mapRest!19966 mapKey!19966 mapValue!19966))))

(declare-fun b!455212 () Bool)

(assert (=> b!455212 (= e!266162 tp_is_empty!12217)))

(declare-fun res!271499 () Bool)

(assert (=> start!40952 (=> (not res!271499) (not e!266158))))

(assert (=> start!40952 (= res!271499 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13894 _keys!709))))))

(assert (=> start!40952 e!266158))

(assert (=> start!40952 tp_is_empty!12217))

(assert (=> start!40952 tp!38463))

(assert (=> start!40952 true))

(declare-fun e!266159 () Bool)

(declare-fun array_inv!9796 (array!28205) Bool)

(assert (=> start!40952 (and (array_inv!9796 _values!549) e!266159)))

(declare-fun array_inv!9797 (array!28203) Bool)

(assert (=> start!40952 (array_inv!9797 _keys!709)))

(declare-fun b!455213 () Bool)

(declare-fun res!271492 () Bool)

(assert (=> b!455213 (=> (not res!271492) (not e!266158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455213 (= res!271492 (validKeyInArray!0 k!794))))

(declare-fun b!455214 () Bool)

(assert (=> b!455214 (= e!266158 e!266157)))

(declare-fun res!271491 () Bool)

(assert (=> b!455214 (=> (not res!271491) (not e!266157))))

(declare-fun lt!206292 () array!28203)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28203 (_ BitVec 32)) Bool)

(assert (=> b!455214 (= res!271491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206292 mask!1025))))

(assert (=> b!455214 (= lt!206292 (array!28204 (store (arr!13542 _keys!709) i!563 k!794) (size!13894 _keys!709)))))

(declare-fun b!455215 () Bool)

(declare-fun res!271493 () Bool)

(assert (=> b!455215 (=> (not res!271493) (not e!266157))))

(declare-datatypes ((List!8159 0))(
  ( (Nil!8156) (Cons!8155 (h!9011 (_ BitVec 64)) (t!13995 List!8159)) )
))
(declare-fun arrayNoDuplicates!0 (array!28203 (_ BitVec 32) List!8159) Bool)

(assert (=> b!455215 (= res!271493 (arrayNoDuplicates!0 lt!206292 #b00000000000000000000000000000000 Nil!8156))))

(declare-fun b!455216 () Bool)

(declare-fun res!271496 () Bool)

(assert (=> b!455216 (=> (not res!271496) (not e!266158))))

(assert (=> b!455216 (= res!271496 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8156))))

(declare-fun b!455217 () Bool)

(assert (=> b!455217 (= e!266159 (and e!266160 mapRes!19966))))

(declare-fun condMapEmpty!19966 () Bool)

(declare-fun mapDefault!19966 () ValueCell!5765)

