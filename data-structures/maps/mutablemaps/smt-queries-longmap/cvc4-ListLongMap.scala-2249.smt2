; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36968 () Bool)

(assert start!36968)

(declare-fun b_free!8087 () Bool)

(declare-fun b_next!8087 () Bool)

(assert (=> start!36968 (= b_free!8087 (not b_next!8087))))

(declare-fun tp!28976 () Bool)

(declare-fun b_and!15347 () Bool)

(assert (=> start!36968 (= tp!28976 b_and!15347)))

(declare-fun res!208206 () Bool)

(declare-fun e!226285 () Bool)

(assert (=> start!36968 (=> (not res!208206) (not e!226285))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36968 (= res!208206 (validMask!0 mask!970))))

(assert (=> start!36968 e!226285))

(declare-datatypes ((V!12751 0))(
  ( (V!12752 (val!4412 Int)) )
))
(declare-datatypes ((ValueCell!4024 0))(
  ( (ValueCellFull!4024 (v!6605 V!12751)) (EmptyCell!4024) )
))
(declare-datatypes ((array!21387 0))(
  ( (array!21388 (arr!10159 (Array (_ BitVec 32) ValueCell!4024)) (size!10511 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21387)

(declare-fun e!226288 () Bool)

(declare-fun array_inv!7500 (array!21387) Bool)

(assert (=> start!36968 (and (array_inv!7500 _values!506) e!226288)))

(assert (=> start!36968 tp!28976))

(assert (=> start!36968 true))

(declare-fun tp_is_empty!8735 () Bool)

(assert (=> start!36968 tp_is_empty!8735))

(declare-datatypes ((array!21389 0))(
  ( (array!21390 (arr!10160 (Array (_ BitVec 32) (_ BitVec 64))) (size!10512 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21389)

(declare-fun array_inv!7501 (array!21389) Bool)

(assert (=> start!36968 (array_inv!7501 _keys!658)))

(declare-fun b!370541 () Bool)

(declare-fun e!226289 () Bool)

(assert (=> b!370541 (= e!226289 tp_is_empty!8735)))

(declare-fun b!370542 () Bool)

(declare-fun res!208213 () Bool)

(assert (=> b!370542 (=> (not res!208213) (not e!226285))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370542 (= res!208213 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10512 _keys!658))))))

(declare-fun b!370543 () Bool)

(declare-fun res!208214 () Bool)

(declare-fun e!226286 () Bool)

(assert (=> b!370543 (=> (not res!208214) (not e!226286))))

(declare-fun lt!169998 () array!21389)

(declare-datatypes ((List!5706 0))(
  ( (Nil!5703) (Cons!5702 (h!6558 (_ BitVec 64)) (t!10864 List!5706)) )
))
(declare-fun arrayNoDuplicates!0 (array!21389 (_ BitVec 32) List!5706) Bool)

(assert (=> b!370543 (= res!208214 (arrayNoDuplicates!0 lt!169998 #b00000000000000000000000000000000 Nil!5703))))

(declare-fun b!370544 () Bool)

(declare-fun res!208207 () Bool)

(assert (=> b!370544 (=> (not res!208207) (not e!226285))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370544 (= res!208207 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!370545 () Bool)

(declare-fun e!226287 () Bool)

(assert (=> b!370545 (= e!226287 tp_is_empty!8735)))

(declare-fun mapIsEmpty!14667 () Bool)

(declare-fun mapRes!14667 () Bool)

(assert (=> mapIsEmpty!14667 mapRes!14667))

(declare-fun b!370546 () Bool)

(declare-fun res!208211 () Bool)

(assert (=> b!370546 (=> (not res!208211) (not e!226285))))

(assert (=> b!370546 (= res!208211 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5703))))

(declare-fun b!370547 () Bool)

(declare-fun res!208212 () Bool)

(assert (=> b!370547 (=> (not res!208212) (not e!226285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370547 (= res!208212 (validKeyInArray!0 k!778))))

(declare-fun b!370548 () Bool)

(declare-fun res!208208 () Bool)

(assert (=> b!370548 (=> (not res!208208) (not e!226285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21389 (_ BitVec 32)) Bool)

(assert (=> b!370548 (= res!208208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370549 () Bool)

(declare-fun res!208209 () Bool)

(assert (=> b!370549 (=> (not res!208209) (not e!226285))))

(assert (=> b!370549 (= res!208209 (or (= (select (arr!10160 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10160 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370550 () Bool)

(assert (=> b!370550 (= e!226288 (and e!226289 mapRes!14667))))

(declare-fun condMapEmpty!14667 () Bool)

(declare-fun mapDefault!14667 () ValueCell!4024)

