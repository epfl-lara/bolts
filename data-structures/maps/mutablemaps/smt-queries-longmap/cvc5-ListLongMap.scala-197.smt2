; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3800 () Bool)

(assert start!3800)

(declare-fun res!15790 () Bool)

(declare-fun e!17385 () Bool)

(assert (=> start!3800 (=> (not res!15790) (not e!17385))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3800 (= res!15790 (validMask!0 mask!2294))))

(assert (=> start!3800 e!17385))

(assert (=> start!3800 true))

(declare-datatypes ((V!1323 0))(
  ( (V!1324 (val!588 Int)) )
))
(declare-datatypes ((ValueCell!362 0))(
  ( (ValueCellFull!362 (v!1674 V!1323)) (EmptyCell!362) )
))
(declare-datatypes ((array!1475 0))(
  ( (array!1476 (arr!695 (Array (_ BitVec 32) ValueCell!362)) (size!796 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1475)

(declare-fun e!17384 () Bool)

(declare-fun array_inv!479 (array!1475) Bool)

(assert (=> start!3800 (and (array_inv!479 _values!1501) e!17384)))

(declare-datatypes ((array!1477 0))(
  ( (array!1478 (arr!696 (Array (_ BitVec 32) (_ BitVec 64))) (size!797 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1477)

(declare-fun array_inv!480 (array!1477) Bool)

(assert (=> start!3800 (array_inv!480 _keys!1833)))

(declare-fun b!26645 () Bool)

(declare-fun res!15787 () Bool)

(assert (=> b!26645 (=> (not res!15787) (not e!17385))))

(declare-datatypes ((List!595 0))(
  ( (Nil!592) (Cons!591 (h!1158 (_ BitVec 64)) (t!3284 List!595)) )
))
(declare-fun arrayNoDuplicates!0 (array!1477 (_ BitVec 32) List!595) Bool)

(assert (=> b!26645 (= res!15787 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!592))))

(declare-fun b!26646 () Bool)

(declare-fun e!17382 () Bool)

(declare-fun tp_is_empty!1123 () Bool)

(assert (=> b!26646 (= e!17382 tp_is_empty!1123)))

(declare-fun b!26647 () Bool)

(declare-fun e!17383 () Bool)

(declare-fun mapRes!1201 () Bool)

(assert (=> b!26647 (= e!17384 (and e!17383 mapRes!1201))))

(declare-fun condMapEmpty!1201 () Bool)

(declare-fun mapDefault!1201 () ValueCell!362)

