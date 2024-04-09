; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38598 () Bool)

(assert start!38598)

(declare-fun b_free!9127 () Bool)

(declare-fun b_next!9127 () Bool)

(assert (=> start!38598 (= b_free!9127 (not b_next!9127))))

(declare-fun tp!32505 () Bool)

(declare-fun b_and!16531 () Bool)

(assert (=> start!38598 (= tp!32505 b_and!16531)))

(declare-fun b!399502 () Bool)

(declare-fun e!241229 () Bool)

(assert (=> b!399502 (= e!241229 (not true))))

(declare-fun e!241232 () Bool)

(assert (=> b!399502 e!241232))

(declare-fun c!54572 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399502 (= c!54572 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14451 0))(
  ( (V!14452 (val!5049 Int)) )
))
(declare-fun minValue!515 () V!14451)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4661 0))(
  ( (ValueCellFull!4661 (v!7292 V!14451)) (EmptyCell!4661) )
))
(declare-datatypes ((array!23897 0))(
  ( (array!23898 (arr!11395 (Array (_ BitVec 32) ValueCell!4661)) (size!11747 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23897)

(declare-datatypes ((Unit!12065 0))(
  ( (Unit!12066) )
))
(declare-fun lt!187569 () Unit!12065)

(declare-fun zeroValue!515 () V!14451)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14451)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23899 0))(
  ( (array!23900 (arr!11396 (Array (_ BitVec 32) (_ BitVec 64))) (size!11748 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23899)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!295 (array!23899 array!23897 (_ BitVec 32) (_ BitVec 32) V!14451 V!14451 (_ BitVec 32) (_ BitVec 64) V!14451 (_ BitVec 32) Int) Unit!12065)

(assert (=> b!399502 (= lt!187569 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!295 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399503 () Bool)

(declare-fun res!229819 () Bool)

(declare-fun e!241234 () Bool)

(assert (=> b!399503 (=> (not res!229819) (not e!241234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399503 (= res!229819 (validMask!0 mask!1025))))

(declare-fun b!399504 () Bool)

(assert (=> b!399504 (= e!241234 e!241229)))

(declare-fun res!229821 () Bool)

(assert (=> b!399504 (=> (not res!229821) (not e!241229))))

(declare-fun lt!187568 () array!23899)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23899 (_ BitVec 32)) Bool)

(assert (=> b!399504 (= res!229821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187568 mask!1025))))

(assert (=> b!399504 (= lt!187568 (array!23900 (store (arr!11396 _keys!709) i!563 k!794) (size!11748 _keys!709)))))

(declare-fun b!399505 () Bool)

(declare-fun e!241233 () Bool)

(declare-fun tp_is_empty!10009 () Bool)

(assert (=> b!399505 (= e!241233 tp_is_empty!10009)))

(declare-fun bm!28039 () Bool)

(declare-datatypes ((tuple2!6620 0))(
  ( (tuple2!6621 (_1!3320 (_ BitVec 64)) (_2!3320 V!14451)) )
))
(declare-datatypes ((List!6574 0))(
  ( (Nil!6571) (Cons!6570 (h!7426 tuple2!6620) (t!11756 List!6574)) )
))
(declare-datatypes ((ListLongMap!5547 0))(
  ( (ListLongMap!5548 (toList!2789 List!6574)) )
))
(declare-fun call!28042 () ListLongMap!5547)

(declare-fun getCurrentListMapNoExtraKeys!1005 (array!23899 array!23897 (_ BitVec 32) (_ BitVec 32) V!14451 V!14451 (_ BitVec 32) Int) ListLongMap!5547)

(assert (=> bm!28039 (= call!28042 (getCurrentListMapNoExtraKeys!1005 (ite c!54572 _keys!709 lt!187568) (ite c!54572 _values!549 (array!23898 (store (arr!11395 _values!549) i!563 (ValueCellFull!4661 v!412)) (size!11747 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399506 () Bool)

(declare-fun res!229818 () Bool)

(assert (=> b!399506 (=> (not res!229818) (not e!241234))))

(assert (=> b!399506 (= res!229818 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11748 _keys!709))))))

(declare-fun b!399507 () Bool)

(declare-fun res!229816 () Bool)

(assert (=> b!399507 (=> (not res!229816) (not e!241229))))

(declare-datatypes ((List!6575 0))(
  ( (Nil!6572) (Cons!6571 (h!7427 (_ BitVec 64)) (t!11757 List!6575)) )
))
(declare-fun arrayNoDuplicates!0 (array!23899 (_ BitVec 32) List!6575) Bool)

(assert (=> b!399507 (= res!229816 (arrayNoDuplicates!0 lt!187568 #b00000000000000000000000000000000 Nil!6572))))

(declare-fun b!399508 () Bool)

(declare-fun call!28043 () ListLongMap!5547)

(declare-fun +!1081 (ListLongMap!5547 tuple2!6620) ListLongMap!5547)

(assert (=> b!399508 (= e!241232 (= call!28043 (+!1081 call!28042 (tuple2!6621 k!794 v!412))))))

(declare-fun mapNonEmpty!16635 () Bool)

(declare-fun mapRes!16635 () Bool)

(declare-fun tp!32504 () Bool)

(declare-fun e!241230 () Bool)

(assert (=> mapNonEmpty!16635 (= mapRes!16635 (and tp!32504 e!241230))))

(declare-fun mapValue!16635 () ValueCell!4661)

(declare-fun mapKey!16635 () (_ BitVec 32))

(declare-fun mapRest!16635 () (Array (_ BitVec 32) ValueCell!4661))

(assert (=> mapNonEmpty!16635 (= (arr!11395 _values!549) (store mapRest!16635 mapKey!16635 mapValue!16635))))

(declare-fun mapIsEmpty!16635 () Bool)

(assert (=> mapIsEmpty!16635 mapRes!16635))

(declare-fun b!399509 () Bool)

(assert (=> b!399509 (= e!241230 tp_is_empty!10009)))

(declare-fun res!229824 () Bool)

(assert (=> start!38598 (=> (not res!229824) (not e!241234))))

(assert (=> start!38598 (= res!229824 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11748 _keys!709))))))

(assert (=> start!38598 e!241234))

(assert (=> start!38598 tp_is_empty!10009))

(assert (=> start!38598 tp!32505))

(assert (=> start!38598 true))

(declare-fun e!241228 () Bool)

(declare-fun array_inv!8338 (array!23897) Bool)

(assert (=> start!38598 (and (array_inv!8338 _values!549) e!241228)))

(declare-fun array_inv!8339 (array!23899) Bool)

(assert (=> start!38598 (array_inv!8339 _keys!709)))

(declare-fun b!399510 () Bool)

(declare-fun res!229815 () Bool)

(assert (=> b!399510 (=> (not res!229815) (not e!241234))))

(assert (=> b!399510 (= res!229815 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6572))))

(declare-fun b!399511 () Bool)

(declare-fun res!229817 () Bool)

(assert (=> b!399511 (=> (not res!229817) (not e!241234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399511 (= res!229817 (validKeyInArray!0 k!794))))

(declare-fun b!399512 () Bool)

(declare-fun res!229822 () Bool)

(assert (=> b!399512 (=> (not res!229822) (not e!241234))))

(assert (=> b!399512 (= res!229822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399513 () Bool)

(assert (=> b!399513 (= e!241232 (= call!28042 call!28043))))

(declare-fun b!399514 () Bool)

(declare-fun res!229823 () Bool)

(assert (=> b!399514 (=> (not res!229823) (not e!241234))))

(assert (=> b!399514 (= res!229823 (or (= (select (arr!11396 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11396 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399515 () Bool)

(declare-fun res!229813 () Bool)

(assert (=> b!399515 (=> (not res!229813) (not e!241229))))

(assert (=> b!399515 (= res!229813 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11748 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun bm!28040 () Bool)

(assert (=> bm!28040 (= call!28043 (getCurrentListMapNoExtraKeys!1005 (ite c!54572 lt!187568 _keys!709) (ite c!54572 (array!23898 (store (arr!11395 _values!549) i!563 (ValueCellFull!4661 v!412)) (size!11747 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399516 () Bool)

(declare-fun res!229814 () Bool)

(assert (=> b!399516 (=> (not res!229814) (not e!241234))))

(declare-fun arrayContainsKey!0 (array!23899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399516 (= res!229814 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!399517 () Bool)

(declare-fun res!229820 () Bool)

(assert (=> b!399517 (=> (not res!229820) (not e!241234))))

(assert (=> b!399517 (= res!229820 (and (= (size!11747 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11748 _keys!709) (size!11747 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399518 () Bool)

(assert (=> b!399518 (= e!241228 (and e!241233 mapRes!16635))))

(declare-fun condMapEmpty!16635 () Bool)

(declare-fun mapDefault!16635 () ValueCell!4661)

