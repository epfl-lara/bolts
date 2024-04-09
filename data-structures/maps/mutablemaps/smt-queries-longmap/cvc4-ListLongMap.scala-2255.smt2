; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37004 () Bool)

(assert start!37004)

(declare-fun b_free!8123 () Bool)

(declare-fun b_next!8123 () Bool)

(assert (=> start!37004 (= b_free!8123 (not b_next!8123))))

(declare-fun tp!29084 () Bool)

(declare-fun b_and!15383 () Bool)

(assert (=> start!37004 (= tp!29084 b_and!15383)))

(declare-fun b!371243 () Bool)

(declare-fun res!208753 () Bool)

(declare-fun e!226611 () Bool)

(assert (=> b!371243 (=> (not res!208753) (not e!226611))))

(declare-datatypes ((array!21455 0))(
  ( (array!21456 (arr!10193 (Array (_ BitVec 32) (_ BitVec 64))) (size!10545 (_ BitVec 32))) )
))
(declare-fun lt!170251 () array!21455)

(declare-datatypes ((List!5724 0))(
  ( (Nil!5721) (Cons!5720 (h!6576 (_ BitVec 64)) (t!10882 List!5724)) )
))
(declare-fun arrayNoDuplicates!0 (array!21455 (_ BitVec 32) List!5724) Bool)

(assert (=> b!371243 (= res!208753 (arrayNoDuplicates!0 lt!170251 #b00000000000000000000000000000000 Nil!5721))))

(declare-fun b!371244 () Bool)

(declare-fun res!208752 () Bool)

(declare-fun e!226613 () Bool)

(assert (=> b!371244 (=> (not res!208752) (not e!226613))))

(declare-fun _keys!658 () array!21455)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371244 (= res!208752 (or (= (select (arr!10193 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10193 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14721 () Bool)

(declare-fun mapRes!14721 () Bool)

(declare-fun tp!29085 () Bool)

(declare-fun e!226609 () Bool)

(assert (=> mapNonEmpty!14721 (= mapRes!14721 (and tp!29085 e!226609))))

(declare-datatypes ((V!12799 0))(
  ( (V!12800 (val!4430 Int)) )
))
(declare-datatypes ((ValueCell!4042 0))(
  ( (ValueCellFull!4042 (v!6623 V!12799)) (EmptyCell!4042) )
))
(declare-datatypes ((array!21457 0))(
  ( (array!21458 (arr!10194 (Array (_ BitVec 32) ValueCell!4042)) (size!10546 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21457)

(declare-fun mapKey!14721 () (_ BitVec 32))

(declare-fun mapValue!14721 () ValueCell!4042)

(declare-fun mapRest!14721 () (Array (_ BitVec 32) ValueCell!4042))

(assert (=> mapNonEmpty!14721 (= (arr!10194 _values!506) (store mapRest!14721 mapKey!14721 mapValue!14721))))

(declare-fun b!371245 () Bool)

(declare-fun res!208746 () Bool)

(assert (=> b!371245 (=> (not res!208746) (not e!226613))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!371245 (= res!208746 (and (= (size!10546 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10545 _keys!658) (size!10546 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371246 () Bool)

(declare-fun res!208751 () Bool)

(assert (=> b!371246 (=> (not res!208751) (not e!226613))))

(assert (=> b!371246 (= res!208751 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10545 _keys!658))))))

(declare-fun res!208750 () Bool)

(assert (=> start!37004 (=> (not res!208750) (not e!226613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37004 (= res!208750 (validMask!0 mask!970))))

(assert (=> start!37004 e!226613))

(declare-fun e!226614 () Bool)

(declare-fun array_inv!7526 (array!21457) Bool)

(assert (=> start!37004 (and (array_inv!7526 _values!506) e!226614)))

(assert (=> start!37004 tp!29084))

(assert (=> start!37004 true))

(declare-fun tp_is_empty!8771 () Bool)

(assert (=> start!37004 tp_is_empty!8771))

(declare-fun array_inv!7527 (array!21455) Bool)

(assert (=> start!37004 (array_inv!7527 _keys!658)))

(declare-fun b!371247 () Bool)

(declare-fun e!226612 () Bool)

(assert (=> b!371247 (= e!226614 (and e!226612 mapRes!14721))))

(declare-fun condMapEmpty!14721 () Bool)

(declare-fun mapDefault!14721 () ValueCell!4042)

