; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133422 () Bool)

(assert start!133422)

(declare-fun mapIsEmpty!59100 () Bool)

(declare-fun mapRes!59100 () Bool)

(assert (=> mapIsEmpty!59100 mapRes!59100))

(declare-fun b!1559332 () Bool)

(declare-fun res!1066411 () Bool)

(declare-fun e!868883 () Bool)

(assert (=> b!1559332 (=> (not res!1066411) (not e!868883))))

(declare-datatypes ((array!103649 0))(
  ( (array!103650 (arr!50013 (Array (_ BitVec 32) (_ BitVec 64))) (size!50564 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103649)

(assert (=> b!1559332 (= res!1066411 (and (bvsle #b00000000000000000000000000000000 (size!50564 _keys!637)) (bvslt (size!50564 _keys!637) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!59100 () Bool)

(declare-fun tp!112756 () Bool)

(declare-fun e!868885 () Bool)

(assert (=> mapNonEmpty!59100 (= mapRes!59100 (and tp!112756 e!868885))))

(declare-datatypes ((V!59521 0))(
  ( (V!59522 (val!19326 Int)) )
))
(declare-datatypes ((ValueCell!18212 0))(
  ( (ValueCellFull!18212 (v!22074 V!59521)) (EmptyCell!18212) )
))
(declare-fun mapValue!59100 () ValueCell!18212)

(declare-fun mapKey!59100 () (_ BitVec 32))

(declare-fun mapRest!59100 () (Array (_ BitVec 32) ValueCell!18212))

(declare-datatypes ((array!103651 0))(
  ( (array!103652 (arr!50014 (Array (_ BitVec 32) ValueCell!18212)) (size!50565 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103651)

(assert (=> mapNonEmpty!59100 (= (arr!50014 _values!487) (store mapRest!59100 mapKey!59100 mapValue!59100))))

(declare-fun b!1559333 () Bool)

(declare-fun res!1066412 () Bool)

(assert (=> b!1559333 (=> (not res!1066412) (not e!868883))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103649 (_ BitVec 32)) Bool)

(assert (=> b!1559333 (= res!1066412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559335 () Bool)

(declare-fun tp_is_empty!38485 () Bool)

(assert (=> b!1559335 (= e!868885 tp_is_empty!38485)))

(declare-fun b!1559336 () Bool)

(declare-fun res!1066413 () Bool)

(assert (=> b!1559336 (=> (not res!1066413) (not e!868883))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559336 (= res!1066413 (and (= (size!50565 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50564 _keys!637) (size!50565 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559337 () Bool)

(declare-fun e!868887 () Bool)

(declare-datatypes ((List!36492 0))(
  ( (Nil!36489) (Cons!36488 (h!37935 (_ BitVec 64)) (t!51232 List!36492)) )
))
(declare-fun contains!10225 (List!36492 (_ BitVec 64)) Bool)

(assert (=> b!1559337 (= e!868887 (contains!10225 Nil!36489 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559338 () Bool)

(declare-fun res!1066414 () Bool)

(assert (=> b!1559338 (=> (not res!1066414) (not e!868883))))

(declare-fun noDuplicate!2676 (List!36492) Bool)

(assert (=> b!1559338 (= res!1066414 (noDuplicate!2676 Nil!36489))))

(declare-fun b!1559334 () Bool)

(assert (=> b!1559334 (= e!868883 e!868887)))

(declare-fun res!1066416 () Bool)

(assert (=> b!1559334 (=> res!1066416 e!868887)))

(assert (=> b!1559334 (= res!1066416 (contains!10225 Nil!36489 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1066415 () Bool)

(assert (=> start!133422 (=> (not res!1066415) (not e!868883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133422 (= res!1066415 (validMask!0 mask!947))))

(assert (=> start!133422 e!868883))

(assert (=> start!133422 true))

(declare-fun e!868882 () Bool)

(declare-fun array_inv!38801 (array!103651) Bool)

(assert (=> start!133422 (and (array_inv!38801 _values!487) e!868882)))

(declare-fun array_inv!38802 (array!103649) Bool)

(assert (=> start!133422 (array_inv!38802 _keys!637)))

(declare-fun b!1559339 () Bool)

(declare-fun e!868886 () Bool)

(assert (=> b!1559339 (= e!868882 (and e!868886 mapRes!59100))))

(declare-fun condMapEmpty!59100 () Bool)

(declare-fun mapDefault!59100 () ValueCell!18212)

