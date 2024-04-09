; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36818 () Bool)

(assert start!36818)

(declare-fun b_free!7937 () Bool)

(declare-fun b_next!7937 () Bool)

(assert (=> start!36818 (= b_free!7937 (not b_next!7937))))

(declare-fun tp!28526 () Bool)

(declare-fun b_and!15197 () Bool)

(assert (=> start!36818 (= tp!28526 b_and!15197)))

(declare-fun res!205962 () Bool)

(declare-fun e!224938 () Bool)

(assert (=> start!36818 (=> (not res!205962) (not e!224938))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36818 (= res!205962 (validMask!0 mask!970))))

(assert (=> start!36818 e!224938))

(assert (=> start!36818 true))

(declare-datatypes ((V!12551 0))(
  ( (V!12552 (val!4337 Int)) )
))
(declare-datatypes ((ValueCell!3949 0))(
  ( (ValueCellFull!3949 (v!6530 V!12551)) (EmptyCell!3949) )
))
(declare-datatypes ((array!21095 0))(
  ( (array!21096 (arr!10013 (Array (_ BitVec 32) ValueCell!3949)) (size!10365 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21095)

(declare-fun e!224937 () Bool)

(declare-fun array_inv!7398 (array!21095) Bool)

(assert (=> start!36818 (and (array_inv!7398 _values!506) e!224937)))

(assert (=> start!36818 tp!28526))

(declare-fun tp_is_empty!8585 () Bool)

(assert (=> start!36818 tp_is_empty!8585))

(declare-datatypes ((array!21097 0))(
  ( (array!21098 (arr!10014 (Array (_ BitVec 32) (_ BitVec 64))) (size!10366 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21097)

(declare-fun array_inv!7399 (array!21097) Bool)

(assert (=> start!36818 (array_inv!7399 _keys!658)))

(declare-fun b!367616 () Bool)

(declare-fun res!205961 () Bool)

(assert (=> b!367616 (=> (not res!205961) (not e!224938))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367616 (= res!205961 (or (= (select (arr!10014 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10014 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367617 () Bool)

(declare-fun e!224935 () Bool)

(assert (=> b!367617 (= e!224935 tp_is_empty!8585)))

(declare-fun b!367618 () Bool)

(declare-fun res!205957 () Bool)

(declare-fun e!224936 () Bool)

(assert (=> b!367618 (=> (not res!205957) (not e!224936))))

(declare-fun lt!169395 () array!21097)

(declare-datatypes ((List!5598 0))(
  ( (Nil!5595) (Cons!5594 (h!6450 (_ BitVec 64)) (t!10756 List!5598)) )
))
(declare-fun arrayNoDuplicates!0 (array!21097 (_ BitVec 32) List!5598) Bool)

(assert (=> b!367618 (= res!205957 (arrayNoDuplicates!0 lt!169395 #b00000000000000000000000000000000 Nil!5595))))

(declare-fun b!367619 () Bool)

(declare-fun e!224939 () Bool)

(assert (=> b!367619 (= e!224939 tp_is_empty!8585)))

(declare-fun b!367620 () Bool)

(declare-fun res!205956 () Bool)

(assert (=> b!367620 (=> (not res!205956) (not e!224938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21097 (_ BitVec 32)) Bool)

(assert (=> b!367620 (= res!205956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367621 () Bool)

(declare-fun res!205955 () Bool)

(assert (=> b!367621 (=> (not res!205955) (not e!224938))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367621 (= res!205955 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!367622 () Bool)

(assert (=> b!367622 (= e!224936 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5740 0))(
  ( (tuple2!5741 (_1!2880 (_ BitVec 64)) (_2!2880 V!12551)) )
))
(declare-datatypes ((List!5599 0))(
  ( (Nil!5596) (Cons!5595 (h!6451 tuple2!5740) (t!10757 List!5599)) )
))
(declare-datatypes ((ListLongMap!4667 0))(
  ( (ListLongMap!4668 (toList!2349 List!5599)) )
))
(declare-fun lt!169396 () ListLongMap!4667)

(declare-fun zeroValue!472 () V!12551)

(declare-fun minValue!472 () V!12551)

(declare-fun getCurrentListMapNoExtraKeys!617 (array!21097 array!21095 (_ BitVec 32) (_ BitVec 32) V!12551 V!12551 (_ BitVec 32) Int) ListLongMap!4667)

(assert (=> b!367622 (= lt!169396 (getCurrentListMapNoExtraKeys!617 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!367623 () Bool)

(declare-fun res!205960 () Bool)

(assert (=> b!367623 (=> (not res!205960) (not e!224938))))

(assert (=> b!367623 (= res!205960 (and (= (size!10365 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10366 _keys!658) (size!10365 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14442 () Bool)

(declare-fun mapRes!14442 () Bool)

(assert (=> mapIsEmpty!14442 mapRes!14442))

(declare-fun b!367624 () Bool)

(declare-fun res!205958 () Bool)

(assert (=> b!367624 (=> (not res!205958) (not e!224938))))

(assert (=> b!367624 (= res!205958 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10366 _keys!658))))))

(declare-fun b!367625 () Bool)

(assert (=> b!367625 (= e!224937 (and e!224939 mapRes!14442))))

(declare-fun condMapEmpty!14442 () Bool)

(declare-fun mapDefault!14442 () ValueCell!3949)

