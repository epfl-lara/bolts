; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37250 () Bool)

(assert start!37250)

(declare-fun b_free!8369 () Bool)

(declare-fun b_next!8369 () Bool)

(assert (=> start!37250 (= b_free!8369 (not b_next!8369))))

(declare-fun tp!29822 () Bool)

(declare-fun b_and!15629 () Bool)

(assert (=> start!37250 (= tp!29822 b_and!15629)))

(declare-fun b!376551 () Bool)

(declare-fun res!212955 () Bool)

(declare-fun e!229316 () Bool)

(assert (=> b!376551 (=> (not res!212955) (not e!229316))))

(declare-datatypes ((array!21933 0))(
  ( (array!21934 (arr!10432 (Array (_ BitVec 32) (_ BitVec 64))) (size!10784 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21933)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376551 (= res!212955 (or (= (select (arr!10432 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10432 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376552 () Bool)

(declare-fun res!212951 () Bool)

(assert (=> b!376552 (=> (not res!212951) (not e!229316))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376552 (= res!212951 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15090 () Bool)

(declare-fun mapRes!15090 () Bool)

(declare-fun tp!29823 () Bool)

(declare-fun e!229318 () Bool)

(assert (=> mapNonEmpty!15090 (= mapRes!15090 (and tp!29823 e!229318))))

(declare-fun mapKey!15090 () (_ BitVec 32))

(declare-datatypes ((V!13127 0))(
  ( (V!13128 (val!4553 Int)) )
))
(declare-datatypes ((ValueCell!4165 0))(
  ( (ValueCellFull!4165 (v!6746 V!13127)) (EmptyCell!4165) )
))
(declare-fun mapRest!15090 () (Array (_ BitVec 32) ValueCell!4165))

(declare-fun mapValue!15090 () ValueCell!4165)

(declare-datatypes ((array!21935 0))(
  ( (array!21936 (arr!10433 (Array (_ BitVec 32) ValueCell!4165)) (size!10785 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21935)

(assert (=> mapNonEmpty!15090 (= (arr!10433 _values!506) (store mapRest!15090 mapKey!15090 mapValue!15090))))

(declare-fun b!376553 () Bool)

(declare-fun e!229321 () Bool)

(assert (=> b!376553 (= e!229316 e!229321)))

(declare-fun res!212949 () Bool)

(assert (=> b!376553 (=> (not res!212949) (not e!229321))))

(declare-fun lt!174863 () array!21933)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21933 (_ BitVec 32)) Bool)

(assert (=> b!376553 (= res!212949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174863 mask!970))))

(assert (=> b!376553 (= lt!174863 (array!21934 (store (arr!10432 _keys!658) i!548 k!778) (size!10784 _keys!658)))))

(declare-fun b!376554 () Bool)

(declare-fun e!229317 () Bool)

(declare-fun tp_is_empty!9017 () Bool)

(assert (=> b!376554 (= e!229317 tp_is_empty!9017)))

(declare-fun b!376555 () Bool)

(declare-fun res!212946 () Bool)

(assert (=> b!376555 (=> (not res!212946) (not e!229321))))

(declare-datatypes ((List!5909 0))(
  ( (Nil!5906) (Cons!5905 (h!6761 (_ BitVec 64)) (t!11067 List!5909)) )
))
(declare-fun arrayNoDuplicates!0 (array!21933 (_ BitVec 32) List!5909) Bool)

(assert (=> b!376555 (= res!212946 (arrayNoDuplicates!0 lt!174863 #b00000000000000000000000000000000 Nil!5906))))

(declare-fun b!376556 () Bool)

(declare-fun e!229320 () Bool)

(declare-fun e!229323 () Bool)

(assert (=> b!376556 (= e!229320 e!229323)))

(declare-fun res!212956 () Bool)

(assert (=> b!376556 (=> res!212956 e!229323)))

(assert (=> b!376556 (= res!212956 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6038 0))(
  ( (tuple2!6039 (_1!3029 (_ BitVec 64)) (_2!3029 V!13127)) )
))
(declare-datatypes ((List!5910 0))(
  ( (Nil!5907) (Cons!5906 (h!6762 tuple2!6038) (t!11068 List!5910)) )
))
(declare-datatypes ((ListLongMap!4965 0))(
  ( (ListLongMap!4966 (toList!2498 List!5910)) )
))
(declare-fun lt!174864 () ListLongMap!4965)

(declare-fun lt!174867 () ListLongMap!4965)

(assert (=> b!376556 (= lt!174864 lt!174867)))

(declare-fun lt!174860 () ListLongMap!4965)

(declare-fun lt!174858 () tuple2!6038)

(declare-fun +!839 (ListLongMap!4965 tuple2!6038) ListLongMap!4965)

(assert (=> b!376556 (= lt!174867 (+!839 lt!174860 lt!174858))))

(declare-fun lt!174862 () ListLongMap!4965)

(declare-fun lt!174868 () ListLongMap!4965)

(assert (=> b!376556 (= lt!174862 lt!174868)))

(declare-fun lt!174857 () ListLongMap!4965)

(assert (=> b!376556 (= lt!174868 (+!839 lt!174857 lt!174858))))

(declare-fun lt!174859 () ListLongMap!4965)

(assert (=> b!376556 (= lt!174864 (+!839 lt!174859 lt!174858))))

(declare-fun zeroValue!472 () V!13127)

(assert (=> b!376556 (= lt!174858 (tuple2!6039 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376557 () Bool)

(declare-fun e!229322 () Bool)

(assert (=> b!376557 (= e!229322 (and e!229317 mapRes!15090))))

(declare-fun condMapEmpty!15090 () Bool)

(declare-fun mapDefault!15090 () ValueCell!4165)

