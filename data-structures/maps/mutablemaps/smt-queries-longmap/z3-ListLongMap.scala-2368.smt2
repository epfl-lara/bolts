; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37680 () Bool)

(assert start!37680)

(declare-fun b_free!8775 () Bool)

(declare-fun b_next!8775 () Bool)

(assert (=> start!37680 (= b_free!8775 (not b_next!8775))))

(declare-fun tp!31077 () Bool)

(declare-fun b_and!16035 () Bool)

(assert (=> start!37680 (= tp!31077 b_and!16035)))

(declare-fun b!385622 () Bool)

(declare-fun res!220087 () Bool)

(declare-fun e!234037 () Bool)

(assert (=> b!385622 (=> (not res!220087) (not e!234037))))

(declare-datatypes ((array!22771 0))(
  ( (array!22772 (arr!10851 (Array (_ BitVec 32) (_ BitVec 64))) (size!11203 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22771)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385622 (= res!220087 (or (= (select (arr!10851 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10851 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385623 () Bool)

(declare-fun e!234036 () Bool)

(declare-fun tp_is_empty!9447 () Bool)

(assert (=> b!385623 (= e!234036 tp_is_empty!9447)))

(declare-fun b!385624 () Bool)

(declare-fun res!220091 () Bool)

(assert (=> b!385624 (=> (not res!220091) (not e!234037))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22771 (_ BitVec 32)) Bool)

(assert (=> b!385624 (= res!220091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385625 () Bool)

(declare-fun res!220082 () Bool)

(assert (=> b!385625 (=> (not res!220082) (not e!234037))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385625 (= res!220082 (validKeyInArray!0 k0!778))))

(declare-fun b!385626 () Bool)

(declare-fun res!220089 () Bool)

(assert (=> b!385626 (=> (not res!220089) (not e!234037))))

(assert (=> b!385626 (= res!220089 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11203 _keys!658))))))

(declare-fun b!385627 () Bool)

(declare-fun res!220086 () Bool)

(declare-fun e!234035 () Bool)

(assert (=> b!385627 (=> (not res!220086) (not e!234035))))

(declare-fun lt!181629 () array!22771)

(declare-datatypes ((List!6234 0))(
  ( (Nil!6231) (Cons!6230 (h!7086 (_ BitVec 64)) (t!11392 List!6234)) )
))
(declare-fun arrayNoDuplicates!0 (array!22771 (_ BitVec 32) List!6234) Bool)

(assert (=> b!385627 (= res!220086 (arrayNoDuplicates!0 lt!181629 #b00000000000000000000000000000000 Nil!6231))))

(declare-fun mapNonEmpty!15735 () Bool)

(declare-fun mapRes!15735 () Bool)

(declare-fun tp!31076 () Bool)

(assert (=> mapNonEmpty!15735 (= mapRes!15735 (and tp!31076 e!234036))))

(declare-datatypes ((V!13701 0))(
  ( (V!13702 (val!4768 Int)) )
))
(declare-datatypes ((ValueCell!4380 0))(
  ( (ValueCellFull!4380 (v!6961 V!13701)) (EmptyCell!4380) )
))
(declare-fun mapRest!15735 () (Array (_ BitVec 32) ValueCell!4380))

(declare-datatypes ((array!22773 0))(
  ( (array!22774 (arr!10852 (Array (_ BitVec 32) ValueCell!4380)) (size!11204 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22773)

(declare-fun mapValue!15735 () ValueCell!4380)

(declare-fun mapKey!15735 () (_ BitVec 32))

(assert (=> mapNonEmpty!15735 (= (arr!10852 _values!506) (store mapRest!15735 mapKey!15735 mapValue!15735))))

(declare-fun res!220090 () Bool)

(assert (=> start!37680 (=> (not res!220090) (not e!234037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37680 (= res!220090 (validMask!0 mask!970))))

(assert (=> start!37680 e!234037))

(assert (=> start!37680 true))

(declare-fun e!234034 () Bool)

(declare-fun array_inv!7964 (array!22773) Bool)

(assert (=> start!37680 (and (array_inv!7964 _values!506) e!234034)))

(assert (=> start!37680 tp!31077))

(assert (=> start!37680 tp_is_empty!9447))

(declare-fun array_inv!7965 (array!22771) Bool)

(assert (=> start!37680 (array_inv!7965 _keys!658)))

(declare-fun b!385628 () Bool)

(declare-fun res!220088 () Bool)

(assert (=> b!385628 (=> (not res!220088) (not e!234037))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!385628 (= res!220088 (and (= (size!11204 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11203 _keys!658) (size!11204 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385629 () Bool)

(assert (=> b!385629 (= e!234037 e!234035)))

(declare-fun res!220083 () Bool)

(assert (=> b!385629 (=> (not res!220083) (not e!234035))))

(assert (=> b!385629 (= res!220083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181629 mask!970))))

(assert (=> b!385629 (= lt!181629 (array!22772 (store (arr!10851 _keys!658) i!548 k0!778) (size!11203 _keys!658)))))

(declare-fun mapIsEmpty!15735 () Bool)

(assert (=> mapIsEmpty!15735 mapRes!15735))

(declare-fun b!385630 () Bool)

(declare-fun e!234039 () Bool)

(assert (=> b!385630 (= e!234039 tp_is_empty!9447)))

(declare-fun b!385631 () Bool)

(declare-fun res!220084 () Bool)

(assert (=> b!385631 (=> (not res!220084) (not e!234037))))

(assert (=> b!385631 (= res!220084 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6231))))

(declare-fun b!385632 () Bool)

(assert (=> b!385632 (= e!234034 (and e!234039 mapRes!15735))))

(declare-fun condMapEmpty!15735 () Bool)

(declare-fun mapDefault!15735 () ValueCell!4380)

(assert (=> b!385632 (= condMapEmpty!15735 (= (arr!10852 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4380)) mapDefault!15735)))))

(declare-fun b!385633 () Bool)

(assert (=> b!385633 (= e!234035 (bvsge i!548 (size!11204 _values!506)))))

(declare-datatypes ((tuple2!6358 0))(
  ( (tuple2!6359 (_1!3189 (_ BitVec 64)) (_2!3189 V!13701)) )
))
(declare-datatypes ((List!6235 0))(
  ( (Nil!6232) (Cons!6231 (h!7087 tuple2!6358) (t!11393 List!6235)) )
))
(declare-datatypes ((ListLongMap!5285 0))(
  ( (ListLongMap!5286 (toList!2658 List!6235)) )
))
(declare-fun lt!181630 () ListLongMap!5285)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13701)

(declare-fun minValue!472 () V!13701)

(declare-fun getCurrentListMapNoExtraKeys!892 (array!22771 array!22773 (_ BitVec 32) (_ BitVec 32) V!13701 V!13701 (_ BitVec 32) Int) ListLongMap!5285)

(assert (=> b!385633 (= lt!181630 (getCurrentListMapNoExtraKeys!892 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385634 () Bool)

(declare-fun res!220085 () Bool)

(assert (=> b!385634 (=> (not res!220085) (not e!234037))))

(declare-fun arrayContainsKey!0 (array!22771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385634 (= res!220085 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37680 res!220090) b!385628))

(assert (= (and b!385628 res!220088) b!385624))

(assert (= (and b!385624 res!220091) b!385631))

(assert (= (and b!385631 res!220084) b!385626))

(assert (= (and b!385626 res!220089) b!385625))

(assert (= (and b!385625 res!220082) b!385622))

(assert (= (and b!385622 res!220087) b!385634))

(assert (= (and b!385634 res!220085) b!385629))

(assert (= (and b!385629 res!220083) b!385627))

(assert (= (and b!385627 res!220086) b!385633))

(assert (= (and b!385632 condMapEmpty!15735) mapIsEmpty!15735))

(assert (= (and b!385632 (not condMapEmpty!15735)) mapNonEmpty!15735))

(get-info :version)

(assert (= (and mapNonEmpty!15735 ((_ is ValueCellFull!4380) mapValue!15735)) b!385623))

(assert (= (and b!385632 ((_ is ValueCellFull!4380) mapDefault!15735)) b!385630))

(assert (= start!37680 b!385632))

(declare-fun m!382159 () Bool)

(assert (=> b!385627 m!382159))

(declare-fun m!382161 () Bool)

(assert (=> b!385622 m!382161))

(declare-fun m!382163 () Bool)

(assert (=> b!385624 m!382163))

(declare-fun m!382165 () Bool)

(assert (=> start!37680 m!382165))

(declare-fun m!382167 () Bool)

(assert (=> start!37680 m!382167))

(declare-fun m!382169 () Bool)

(assert (=> start!37680 m!382169))

(declare-fun m!382171 () Bool)

(assert (=> b!385631 m!382171))

(declare-fun m!382173 () Bool)

(assert (=> b!385634 m!382173))

(declare-fun m!382175 () Bool)

(assert (=> b!385625 m!382175))

(declare-fun m!382177 () Bool)

(assert (=> b!385633 m!382177))

(declare-fun m!382179 () Bool)

(assert (=> b!385629 m!382179))

(declare-fun m!382181 () Bool)

(assert (=> b!385629 m!382181))

(declare-fun m!382183 () Bool)

(assert (=> mapNonEmpty!15735 m!382183))

(check-sat b_and!16035 (not b!385627) (not b!385629) (not mapNonEmpty!15735) tp_is_empty!9447 (not b!385634) (not b!385633) (not b!385625) (not b!385624) (not b!385631) (not b_next!8775) (not start!37680))
(check-sat b_and!16035 (not b_next!8775))
