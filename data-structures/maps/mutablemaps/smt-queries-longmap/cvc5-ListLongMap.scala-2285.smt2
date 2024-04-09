; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37180 () Bool)

(assert start!37180)

(declare-fun b_free!8299 () Bool)

(declare-fun b_next!8299 () Bool)

(assert (=> start!37180 (= b_free!8299 (not b_next!8299))))

(declare-fun tp!29612 () Bool)

(declare-fun b_and!15559 () Bool)

(assert (=> start!37180 (= tp!29612 b_and!15559)))

(declare-fun mapIsEmpty!14985 () Bool)

(declare-fun mapRes!14985 () Bool)

(assert (=> mapIsEmpty!14985 mapRes!14985))

(declare-fun b!374967 () Bool)

(declare-fun res!211677 () Bool)

(declare-fun e!228479 () Bool)

(assert (=> b!374967 (=> (not res!211677) (not e!228479))))

(declare-datatypes ((array!21793 0))(
  ( (array!21794 (arr!10362 (Array (_ BitVec 32) (_ BitVec 64))) (size!10714 (_ BitVec 32))) )
))
(declare-fun lt!173397 () array!21793)

(declare-datatypes ((List!5853 0))(
  ( (Nil!5850) (Cons!5849 (h!6705 (_ BitVec 64)) (t!11011 List!5853)) )
))
(declare-fun arrayNoDuplicates!0 (array!21793 (_ BitVec 32) List!5853) Bool)

(assert (=> b!374967 (= res!211677 (arrayNoDuplicates!0 lt!173397 #b00000000000000000000000000000000 Nil!5850))))

(declare-fun b!374968 () Bool)

(declare-fun res!211678 () Bool)

(declare-fun e!228480 () Bool)

(assert (=> b!374968 (=> (not res!211678) (not e!228480))))

(declare-fun _keys!658 () array!21793)

(assert (=> b!374968 (= res!211678 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5850))))

(declare-fun b!374969 () Bool)

(declare-fun res!211681 () Bool)

(assert (=> b!374969 (=> (not res!211681) (not e!228480))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374969 (= res!211681 (or (= (select (arr!10362 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10362 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374970 () Bool)

(declare-fun e!228477 () Bool)

(declare-fun tp_is_empty!8947 () Bool)

(assert (=> b!374970 (= e!228477 tp_is_empty!8947)))

(declare-fun res!211687 () Bool)

(assert (=> start!37180 (=> (not res!211687) (not e!228480))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37180 (= res!211687 (validMask!0 mask!970))))

(assert (=> start!37180 e!228480))

(declare-datatypes ((V!13035 0))(
  ( (V!13036 (val!4518 Int)) )
))
(declare-datatypes ((ValueCell!4130 0))(
  ( (ValueCellFull!4130 (v!6711 V!13035)) (EmptyCell!4130) )
))
(declare-datatypes ((array!21795 0))(
  ( (array!21796 (arr!10363 (Array (_ BitVec 32) ValueCell!4130)) (size!10715 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21795)

(declare-fun e!228476 () Bool)

(declare-fun array_inv!7634 (array!21795) Bool)

(assert (=> start!37180 (and (array_inv!7634 _values!506) e!228476)))

(assert (=> start!37180 tp!29612))

(assert (=> start!37180 true))

(assert (=> start!37180 tp_is_empty!8947))

(declare-fun array_inv!7635 (array!21793) Bool)

(assert (=> start!37180 (array_inv!7635 _keys!658)))

(declare-fun b!374971 () Bool)

(declare-fun e!228478 () Bool)

(assert (=> b!374971 (= e!228478 true)))

(declare-datatypes ((tuple2!5982 0))(
  ( (tuple2!5983 (_1!3001 (_ BitVec 64)) (_2!3001 V!13035)) )
))
(declare-fun lt!173402 () tuple2!5982)

(declare-datatypes ((List!5854 0))(
  ( (Nil!5851) (Cons!5850 (h!6706 tuple2!5982) (t!11012 List!5854)) )
))
(declare-datatypes ((ListLongMap!4909 0))(
  ( (ListLongMap!4910 (toList!2470 List!5854)) )
))
(declare-fun lt!173400 () ListLongMap!4909)

(declare-fun lt!173398 () tuple2!5982)

(declare-fun lt!173399 () ListLongMap!4909)

(declare-fun +!811 (ListLongMap!4909 tuple2!5982) ListLongMap!4909)

(assert (=> b!374971 (= (+!811 lt!173400 lt!173398) (+!811 lt!173399 lt!173402))))

(declare-fun v!373 () V!13035)

(declare-fun lt!173405 () ListLongMap!4909)

(declare-datatypes ((Unit!11525 0))(
  ( (Unit!11526) )
))
(declare-fun lt!173403 () Unit!11525)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!13035)

(declare-fun addCommutativeForDiffKeys!240 (ListLongMap!4909 (_ BitVec 64) V!13035 (_ BitVec 64) V!13035) Unit!11525)

(assert (=> b!374971 (= lt!173403 (addCommutativeForDiffKeys!240 lt!173405 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!14985 () Bool)

(declare-fun tp!29613 () Bool)

(assert (=> mapNonEmpty!14985 (= mapRes!14985 (and tp!29613 e!228477))))

(declare-fun mapKey!14985 () (_ BitVec 32))

(declare-fun mapRest!14985 () (Array (_ BitVec 32) ValueCell!4130))

(declare-fun mapValue!14985 () ValueCell!4130)

(assert (=> mapNonEmpty!14985 (= (arr!10363 _values!506) (store mapRest!14985 mapKey!14985 mapValue!14985))))

(declare-fun b!374972 () Bool)

(declare-fun res!211682 () Bool)

(assert (=> b!374972 (=> (not res!211682) (not e!228480))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374972 (= res!211682 (and (= (size!10715 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10714 _keys!658) (size!10715 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374973 () Bool)

(assert (=> b!374973 (= e!228480 e!228479)))

(declare-fun res!211686 () Bool)

(assert (=> b!374973 (=> (not res!211686) (not e!228479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21793 (_ BitVec 32)) Bool)

(assert (=> b!374973 (= res!211686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173397 mask!970))))

(assert (=> b!374973 (= lt!173397 (array!21794 (store (arr!10362 _keys!658) i!548 k!778) (size!10714 _keys!658)))))

(declare-fun b!374974 () Bool)

(declare-fun e!228481 () Bool)

(assert (=> b!374974 (= e!228481 tp_is_empty!8947)))

(declare-fun b!374975 () Bool)

(declare-fun res!211680 () Bool)

(assert (=> b!374975 (=> (not res!211680) (not e!228480))))

(assert (=> b!374975 (= res!211680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374976 () Bool)

(declare-fun res!211679 () Bool)

(assert (=> b!374976 (=> (not res!211679) (not e!228480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374976 (= res!211679 (validKeyInArray!0 k!778))))

(declare-fun b!374977 () Bool)

(declare-fun res!211683 () Bool)

(assert (=> b!374977 (=> (not res!211683) (not e!228480))))

(assert (=> b!374977 (= res!211683 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10714 _keys!658))))))

(declare-fun b!374978 () Bool)

(assert (=> b!374978 (= e!228476 (and e!228481 mapRes!14985))))

(declare-fun condMapEmpty!14985 () Bool)

(declare-fun mapDefault!14985 () ValueCell!4130)

