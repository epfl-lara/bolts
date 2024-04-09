; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39184 () Bool)

(assert start!39184)

(declare-fun b_free!9443 () Bool)

(declare-fun b_next!9443 () Bool)

(assert (=> start!39184 (= b_free!9443 (not b_next!9443))))

(declare-fun tp!33858 () Bool)

(declare-fun b_and!16847 () Bool)

(assert (=> start!39184 (= tp!33858 b_and!16847)))

(declare-fun b!412377 () Bool)

(declare-fun res!239556 () Bool)

(declare-fun e!246752 () Bool)

(assert (=> b!412377 (=> (not res!239556) (not e!246752))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412377 (= res!239556 (bvsle from!863 i!563))))

(declare-fun b!412378 () Bool)

(declare-fun res!239560 () Bool)

(declare-fun e!246757 () Bool)

(assert (=> b!412378 (=> (not res!239560) (not e!246757))))

(declare-datatypes ((array!25029 0))(
  ( (array!25030 (arr!11961 (Array (_ BitVec 32) (_ BitVec 64))) (size!12313 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25029)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15231 0))(
  ( (V!15232 (val!5342 Int)) )
))
(declare-datatypes ((ValueCell!4954 0))(
  ( (ValueCellFull!4954 (v!7585 V!15231)) (EmptyCell!4954) )
))
(declare-datatypes ((array!25031 0))(
  ( (array!25032 (arr!11962 (Array (_ BitVec 32) ValueCell!4954)) (size!12314 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25031)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!412378 (= res!239560 (and (= (size!12314 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12313 _keys!709) (size!12314 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!239555 () Bool)

(assert (=> start!39184 (=> (not res!239555) (not e!246757))))

(assert (=> start!39184 (= res!239555 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12313 _keys!709))))))

(assert (=> start!39184 e!246757))

(declare-fun tp_is_empty!10595 () Bool)

(assert (=> start!39184 tp_is_empty!10595))

(assert (=> start!39184 tp!33858))

(assert (=> start!39184 true))

(declare-fun e!246753 () Bool)

(declare-fun array_inv!8722 (array!25031) Bool)

(assert (=> start!39184 (and (array_inv!8722 _values!549) e!246753)))

(declare-fun array_inv!8723 (array!25029) Bool)

(assert (=> start!39184 (array_inv!8723 _keys!709)))

(declare-fun b!412379 () Bool)

(declare-fun res!239561 () Bool)

(assert (=> b!412379 (=> (not res!239561) (not e!246752))))

(declare-fun lt!189471 () array!25029)

(declare-datatypes ((List!6917 0))(
  ( (Nil!6914) (Cons!6913 (h!7769 (_ BitVec 64)) (t!12099 List!6917)) )
))
(declare-fun arrayNoDuplicates!0 (array!25029 (_ BitVec 32) List!6917) Bool)

(assert (=> b!412379 (= res!239561 (arrayNoDuplicates!0 lt!189471 #b00000000000000000000000000000000 Nil!6914))))

(declare-fun b!412380 () Bool)

(declare-fun res!239551 () Bool)

(assert (=> b!412380 (=> (not res!239551) (not e!246757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412380 (= res!239551 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17514 () Bool)

(declare-fun mapRes!17514 () Bool)

(declare-fun tp!33857 () Bool)

(declare-fun e!246756 () Bool)

(assert (=> mapNonEmpty!17514 (= mapRes!17514 (and tp!33857 e!246756))))

(declare-fun mapValue!17514 () ValueCell!4954)

(declare-fun mapRest!17514 () (Array (_ BitVec 32) ValueCell!4954))

(declare-fun mapKey!17514 () (_ BitVec 32))

(assert (=> mapNonEmpty!17514 (= (arr!11962 _values!549) (store mapRest!17514 mapKey!17514 mapValue!17514))))

(declare-fun b!412381 () Bool)

(declare-fun res!239558 () Bool)

(assert (=> b!412381 (=> (not res!239558) (not e!246757))))

(assert (=> b!412381 (= res!239558 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12313 _keys!709))))))

(declare-fun b!412382 () Bool)

(declare-fun res!239562 () Bool)

(assert (=> b!412382 (=> (not res!239562) (not e!246757))))

(assert (=> b!412382 (= res!239562 (or (= (select (arr!11961 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11961 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412383 () Bool)

(declare-fun res!239553 () Bool)

(assert (=> b!412383 (=> (not res!239553) (not e!246757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25029 (_ BitVec 32)) Bool)

(assert (=> b!412383 (= res!239553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412384 () Bool)

(declare-fun e!246754 () Bool)

(assert (=> b!412384 (= e!246753 (and e!246754 mapRes!17514))))

(declare-fun condMapEmpty!17514 () Bool)

(declare-fun mapDefault!17514 () ValueCell!4954)

