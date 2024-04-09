; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83144 () Bool)

(assert start!83144)

(declare-fun b_free!19109 () Bool)

(declare-fun b_next!19109 () Bool)

(assert (=> start!83144 (= b_free!19109 (not b_next!19109))))

(declare-fun tp!66607 () Bool)

(declare-fun b_and!30615 () Bool)

(assert (=> start!83144 (= tp!66607 b_and!30615)))

(declare-fun b!969416 () Bool)

(declare-fun e!546566 () Bool)

(declare-fun tp_is_empty!22007 () Bool)

(assert (=> b!969416 (= e!546566 tp_is_empty!22007)))

(declare-fun b!969417 () Bool)

(declare-fun e!546564 () Bool)

(assert (=> b!969417 (= e!546564 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34325 0))(
  ( (V!34326 (val!11054 Int)) )
))
(declare-datatypes ((ValueCell!10522 0))(
  ( (ValueCellFull!10522 (v!13613 V!34325)) (EmptyCell!10522) )
))
(declare-datatypes ((array!60061 0))(
  ( (array!60062 (arr!28890 (Array (_ BitVec 32) ValueCell!10522)) (size!29370 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60061)

(declare-fun zeroValue!1367 () V!34325)

(declare-fun lt!431596 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34325)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60063 0))(
  ( (array!60064 (arr!28891 (Array (_ BitVec 32) (_ BitVec 64))) (size!29371 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60063)

(declare-datatypes ((tuple2!14258 0))(
  ( (tuple2!14259 (_1!7139 (_ BitVec 64)) (_2!7139 V!34325)) )
))
(declare-datatypes ((List!20152 0))(
  ( (Nil!20149) (Cons!20148 (h!21310 tuple2!14258) (t!28523 List!20152)) )
))
(declare-datatypes ((ListLongMap!12969 0))(
  ( (ListLongMap!12970 (toList!6500 List!20152)) )
))
(declare-fun contains!5555 (ListLongMap!12969 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3685 (array!60063 array!60061 (_ BitVec 32) (_ BitVec 32) V!34325 V!34325 (_ BitVec 32) Int) ListLongMap!12969)

(assert (=> b!969417 (= lt!431596 (contains!5555 (getCurrentListMap!3685 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28891 _keys!1717) i!822)))))

(declare-fun b!969418 () Bool)

(declare-fun res!648960 () Bool)

(assert (=> b!969418 (=> (not res!648960) (not e!546564))))

(assert (=> b!969418 (= res!648960 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29371 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29371 _keys!1717))))))

(declare-fun b!969419 () Bool)

(declare-fun res!648961 () Bool)

(assert (=> b!969419 (=> (not res!648961) (not e!546564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60063 (_ BitVec 32)) Bool)

(assert (=> b!969419 (= res!648961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!648958 () Bool)

(assert (=> start!83144 (=> (not res!648958) (not e!546564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83144 (= res!648958 (validMask!0 mask!2147))))

(assert (=> start!83144 e!546564))

(assert (=> start!83144 true))

(declare-fun e!546565 () Bool)

(declare-fun array_inv!22259 (array!60061) Bool)

(assert (=> start!83144 (and (array_inv!22259 _values!1425) e!546565)))

(assert (=> start!83144 tp_is_empty!22007))

(assert (=> start!83144 tp!66607))

(declare-fun array_inv!22260 (array!60063) Bool)

(assert (=> start!83144 (array_inv!22260 _keys!1717)))

(declare-fun b!969420 () Bool)

(declare-fun e!546567 () Bool)

(assert (=> b!969420 (= e!546567 tp_is_empty!22007)))

(declare-fun mapIsEmpty!35020 () Bool)

(declare-fun mapRes!35020 () Bool)

(assert (=> mapIsEmpty!35020 mapRes!35020))

(declare-fun b!969421 () Bool)

(assert (=> b!969421 (= e!546565 (and e!546567 mapRes!35020))))

(declare-fun condMapEmpty!35020 () Bool)

(declare-fun mapDefault!35020 () ValueCell!10522)

