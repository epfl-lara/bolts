; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40460 () Bool)

(assert start!40460)

(declare-fun b!444965 () Bool)

(declare-fun res!264054 () Bool)

(declare-fun e!261603 () Bool)

(assert (=> b!444965 (=> (not res!264054) (not e!261603))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444965 (= res!264054 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!19383 () Bool)

(declare-fun mapRes!19383 () Bool)

(declare-fun tp!37365 () Bool)

(declare-fun e!261600 () Bool)

(assert (=> mapNonEmpty!19383 (= mapRes!19383 (and tp!37365 e!261600))))

(declare-fun mapKey!19383 () (_ BitVec 32))

(declare-datatypes ((V!16887 0))(
  ( (V!16888 (val!5963 Int)) )
))
(declare-datatypes ((ValueCell!5575 0))(
  ( (ValueCellFull!5575 (v!8210 V!16887)) (EmptyCell!5575) )
))
(declare-datatypes ((array!27443 0))(
  ( (array!27444 (arr!13166 (Array (_ BitVec 32) ValueCell!5575)) (size!13518 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27443)

(declare-fun mapValue!19383 () ValueCell!5575)

(declare-fun mapRest!19383 () (Array (_ BitVec 32) ValueCell!5575))

(assert (=> mapNonEmpty!19383 (= (arr!13166 _values!549) (store mapRest!19383 mapKey!19383 mapValue!19383))))

(declare-fun b!444966 () Bool)

(declare-fun res!264050 () Bool)

(assert (=> b!444966 (=> (not res!264050) (not e!261603))))

(declare-datatypes ((array!27445 0))(
  ( (array!27446 (arr!13167 (Array (_ BitVec 32) (_ BitVec 64))) (size!13519 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27445)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27445 (_ BitVec 32)) Bool)

(assert (=> b!444966 (= res!264050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444967 () Bool)

(declare-fun res!264048 () Bool)

(assert (=> b!444967 (=> (not res!264048) (not e!261603))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444967 (= res!264048 (or (= (select (arr!13167 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13167 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444968 () Bool)

(declare-fun tp_is_empty!11837 () Bool)

(assert (=> b!444968 (= e!261600 tp_is_empty!11837)))

(declare-fun b!444969 () Bool)

(declare-fun res!264053 () Bool)

(assert (=> b!444969 (=> (not res!264053) (not e!261603))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!444969 (= res!264053 (and (= (size!13518 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13519 _keys!709) (size!13518 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444970 () Bool)

(declare-fun res!264051 () Bool)

(assert (=> b!444970 (=> (not res!264051) (not e!261603))))

(declare-fun arrayContainsKey!0 (array!27445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444970 (= res!264051 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!264052 () Bool)

(assert (=> start!40460 (=> (not res!264052) (not e!261603))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40460 (= res!264052 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13519 _keys!709))))))

(assert (=> start!40460 e!261603))

(assert (=> start!40460 true))

(declare-fun e!261598 () Bool)

(declare-fun array_inv!9536 (array!27443) Bool)

(assert (=> start!40460 (and (array_inv!9536 _values!549) e!261598)))

(declare-fun array_inv!9537 (array!27445) Bool)

(assert (=> start!40460 (array_inv!9537 _keys!709)))

(declare-fun b!444971 () Bool)

(declare-fun e!261601 () Bool)

(assert (=> b!444971 (= e!261601 false)))

(declare-fun lt!203565 () Bool)

(declare-fun lt!203564 () array!27445)

(declare-datatypes ((List!7857 0))(
  ( (Nil!7854) (Cons!7853 (h!8709 (_ BitVec 64)) (t!13623 List!7857)) )
))
(declare-fun arrayNoDuplicates!0 (array!27445 (_ BitVec 32) List!7857) Bool)

(assert (=> b!444971 (= lt!203565 (arrayNoDuplicates!0 lt!203564 #b00000000000000000000000000000000 Nil!7854))))

(declare-fun b!444972 () Bool)

(declare-fun res!264046 () Bool)

(assert (=> b!444972 (=> (not res!264046) (not e!261603))))

(assert (=> b!444972 (= res!264046 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7854))))

(declare-fun b!444973 () Bool)

(declare-fun res!264055 () Bool)

(assert (=> b!444973 (=> (not res!264055) (not e!261603))))

(assert (=> b!444973 (= res!264055 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13519 _keys!709))))))

(declare-fun b!444974 () Bool)

(declare-fun e!261599 () Bool)

(assert (=> b!444974 (= e!261598 (and e!261599 mapRes!19383))))

(declare-fun condMapEmpty!19383 () Bool)

(declare-fun mapDefault!19383 () ValueCell!5575)

