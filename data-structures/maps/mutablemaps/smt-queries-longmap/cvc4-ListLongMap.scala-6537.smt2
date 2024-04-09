; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83138 () Bool)

(assert start!83138)

(declare-fun b_free!19103 () Bool)

(declare-fun b_next!19103 () Bool)

(assert (=> start!83138 (= b_free!19103 (not b_next!19103))))

(declare-fun tp!66589 () Bool)

(declare-fun b_and!30609 () Bool)

(assert (=> start!83138 (= tp!66589 b_and!30609)))

(declare-fun b!969335 () Bool)

(declare-fun e!546522 () Bool)

(declare-fun tp_is_empty!22001 () Bool)

(assert (=> b!969335 (= e!546522 tp_is_empty!22001)))

(declare-fun b!969336 () Bool)

(declare-fun res!648905 () Bool)

(declare-fun e!546519 () Bool)

(assert (=> b!969336 (=> (not res!648905) (not e!546519))))

(declare-datatypes ((array!60049 0))(
  ( (array!60050 (arr!28884 (Array (_ BitVec 32) (_ BitVec 64))) (size!29364 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60049)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60049 (_ BitVec 32)) Bool)

(assert (=> b!969336 (= res!648905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969337 () Bool)

(declare-fun res!648907 () Bool)

(assert (=> b!969337 (=> (not res!648907) (not e!546519))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969337 (= res!648907 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29364 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29364 _keys!1717))))))

(declare-fun res!648903 () Bool)

(assert (=> start!83138 (=> (not res!648903) (not e!546519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83138 (= res!648903 (validMask!0 mask!2147))))

(assert (=> start!83138 e!546519))

(assert (=> start!83138 true))

(declare-datatypes ((V!34317 0))(
  ( (V!34318 (val!11051 Int)) )
))
(declare-datatypes ((ValueCell!10519 0))(
  ( (ValueCellFull!10519 (v!13610 V!34317)) (EmptyCell!10519) )
))
(declare-datatypes ((array!60051 0))(
  ( (array!60052 (arr!28885 (Array (_ BitVec 32) ValueCell!10519)) (size!29365 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60051)

(declare-fun e!546520 () Bool)

(declare-fun array_inv!22253 (array!60051) Bool)

(assert (=> start!83138 (and (array_inv!22253 _values!1425) e!546520)))

(assert (=> start!83138 tp_is_empty!22001))

(assert (=> start!83138 tp!66589))

(declare-fun array_inv!22254 (array!60049) Bool)

(assert (=> start!83138 (array_inv!22254 _keys!1717)))

(declare-fun b!969338 () Bool)

(declare-fun e!546521 () Bool)

(assert (=> b!969338 (= e!546521 tp_is_empty!22001)))

(declare-fun b!969339 () Bool)

(declare-fun res!648904 () Bool)

(assert (=> b!969339 (=> (not res!648904) (not e!546519))))

(declare-datatypes ((List!20147 0))(
  ( (Nil!20144) (Cons!20143 (h!21305 (_ BitVec 64)) (t!28518 List!20147)) )
))
(declare-fun arrayNoDuplicates!0 (array!60049 (_ BitVec 32) List!20147) Bool)

(assert (=> b!969339 (= res!648904 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20144))))

(declare-fun mapIsEmpty!35011 () Bool)

(declare-fun mapRes!35011 () Bool)

(assert (=> mapIsEmpty!35011 mapRes!35011))

(declare-fun mapNonEmpty!35011 () Bool)

(declare-fun tp!66588 () Bool)

(assert (=> mapNonEmpty!35011 (= mapRes!35011 (and tp!66588 e!546521))))

(declare-fun mapRest!35011 () (Array (_ BitVec 32) ValueCell!10519))

(declare-fun mapKey!35011 () (_ BitVec 32))

(declare-fun mapValue!35011 () ValueCell!10519)

(assert (=> mapNonEmpty!35011 (= (arr!28885 _values!1425) (store mapRest!35011 mapKey!35011 mapValue!35011))))

(declare-fun b!969340 () Bool)

(assert (=> b!969340 (= e!546519 false)))

(declare-fun zeroValue!1367 () V!34317)

(declare-fun defaultEntry!1428 () Int)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34317)

(declare-fun lt!431587 () Bool)

(declare-datatypes ((tuple2!14254 0))(
  ( (tuple2!14255 (_1!7137 (_ BitVec 64)) (_2!7137 V!34317)) )
))
(declare-datatypes ((List!20148 0))(
  ( (Nil!20145) (Cons!20144 (h!21306 tuple2!14254) (t!28519 List!20148)) )
))
(declare-datatypes ((ListLongMap!12965 0))(
  ( (ListLongMap!12966 (toList!6498 List!20148)) )
))
(declare-fun contains!5553 (ListLongMap!12965 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3683 (array!60049 array!60051 (_ BitVec 32) (_ BitVec 32) V!34317 V!34317 (_ BitVec 32) Int) ListLongMap!12965)

(assert (=> b!969340 (= lt!431587 (contains!5553 (getCurrentListMap!3683 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28884 _keys!1717) i!822)))))

(declare-fun b!969341 () Bool)

(declare-fun res!648902 () Bool)

(assert (=> b!969341 (=> (not res!648902) (not e!546519))))

(assert (=> b!969341 (= res!648902 (and (= (size!29365 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29364 _keys!1717) (size!29365 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969342 () Bool)

(assert (=> b!969342 (= e!546520 (and e!546522 mapRes!35011))))

(declare-fun condMapEmpty!35011 () Bool)

(declare-fun mapDefault!35011 () ValueCell!10519)

