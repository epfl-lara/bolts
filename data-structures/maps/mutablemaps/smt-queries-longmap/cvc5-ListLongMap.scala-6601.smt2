; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83518 () Bool)

(assert start!83518)

(declare-fun b_free!19477 () Bool)

(declare-fun b_next!19477 () Bool)

(assert (=> start!83518 (= b_free!19477 (not b_next!19477))))

(declare-fun tp!67720 () Bool)

(declare-fun b_and!31097 () Bool)

(assert (=> start!83518 (= tp!67720 b_and!31097)))

(declare-fun b!975157 () Bool)

(declare-fun res!652906 () Bool)

(declare-fun e!549629 () Bool)

(assert (=> b!975157 (=> (not res!652906) (not e!549629))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34825 0))(
  ( (V!34826 (val!11241 Int)) )
))
(declare-datatypes ((ValueCell!10709 0))(
  ( (ValueCellFull!10709 (v!13800 V!34825)) (EmptyCell!10709) )
))
(declare-datatypes ((array!60777 0))(
  ( (array!60778 (arr!29248 (Array (_ BitVec 32) ValueCell!10709)) (size!29728 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60777)

(declare-fun zeroValue!1367 () V!34825)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34825)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60779 0))(
  ( (array!60780 (arr!29249 (Array (_ BitVec 32) (_ BitVec 64))) (size!29729 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60779)

(declare-datatypes ((tuple2!14552 0))(
  ( (tuple2!14553 (_1!7286 (_ BitVec 64)) (_2!7286 V!34825)) )
))
(declare-datatypes ((List!20425 0))(
  ( (Nil!20422) (Cons!20421 (h!21583 tuple2!14552) (t!28910 List!20425)) )
))
(declare-datatypes ((ListLongMap!13263 0))(
  ( (ListLongMap!13264 (toList!6647 List!20425)) )
))
(declare-fun contains!5680 (ListLongMap!13263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3832 (array!60779 array!60777 (_ BitVec 32) (_ BitVec 32) V!34825 V!34825 (_ BitVec 32) Int) ListLongMap!13263)

(assert (=> b!975157 (= res!652906 (contains!5680 (getCurrentListMap!3832 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29249 _keys!1717) i!822)))))

(declare-fun res!652904 () Bool)

(assert (=> start!83518 (=> (not res!652904) (not e!549629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83518 (= res!652904 (validMask!0 mask!2147))))

(assert (=> start!83518 e!549629))

(assert (=> start!83518 true))

(declare-fun e!549633 () Bool)

(declare-fun array_inv!22515 (array!60777) Bool)

(assert (=> start!83518 (and (array_inv!22515 _values!1425) e!549633)))

(declare-fun tp_is_empty!22381 () Bool)

(assert (=> start!83518 tp_is_empty!22381))

(assert (=> start!83518 tp!67720))

(declare-fun array_inv!22516 (array!60779) Bool)

(assert (=> start!83518 (array_inv!22516 _keys!1717)))

(declare-fun mapNonEmpty!35581 () Bool)

(declare-fun mapRes!35581 () Bool)

(declare-fun tp!67719 () Bool)

(declare-fun e!549632 () Bool)

(assert (=> mapNonEmpty!35581 (= mapRes!35581 (and tp!67719 e!549632))))

(declare-fun mapRest!35581 () (Array (_ BitVec 32) ValueCell!10709))

(declare-fun mapKey!35581 () (_ BitVec 32))

(declare-fun mapValue!35581 () ValueCell!10709)

(assert (=> mapNonEmpty!35581 (= (arr!29248 _values!1425) (store mapRest!35581 mapKey!35581 mapValue!35581))))

(declare-fun b!975158 () Bool)

(declare-fun res!652905 () Bool)

(assert (=> b!975158 (=> (not res!652905) (not e!549629))))

(assert (=> b!975158 (= res!652905 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29729 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29729 _keys!1717))))))

(declare-fun b!975159 () Bool)

(declare-fun res!652902 () Bool)

(assert (=> b!975159 (=> (not res!652902) (not e!549629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975159 (= res!652902 (validKeyInArray!0 (select (arr!29249 _keys!1717) i!822)))))

(declare-fun b!975160 () Bool)

(declare-fun res!652903 () Bool)

(assert (=> b!975160 (=> (not res!652903) (not e!549629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60779 (_ BitVec 32)) Bool)

(assert (=> b!975160 (= res!652903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975161 () Bool)

(assert (=> b!975161 (= e!549632 tp_is_empty!22381)))

(declare-fun b!975162 () Bool)

(declare-fun res!652900 () Bool)

(assert (=> b!975162 (=> (not res!652900) (not e!549629))))

(assert (=> b!975162 (= res!652900 (and (= (size!29728 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29729 _keys!1717) (size!29728 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975163 () Bool)

(declare-fun e!549631 () Bool)

(assert (=> b!975163 (= e!549631 tp_is_empty!22381)))

(declare-fun mapIsEmpty!35581 () Bool)

(assert (=> mapIsEmpty!35581 mapRes!35581))

(declare-fun b!975164 () Bool)

(assert (=> b!975164 (= e!549629 false)))

(declare-fun lt!432796 () ListLongMap!13263)

(assert (=> b!975164 (= lt!432796 (getCurrentListMap!3832 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975165 () Bool)

(assert (=> b!975165 (= e!549633 (and e!549631 mapRes!35581))))

(declare-fun condMapEmpty!35581 () Bool)

(declare-fun mapDefault!35581 () ValueCell!10709)

