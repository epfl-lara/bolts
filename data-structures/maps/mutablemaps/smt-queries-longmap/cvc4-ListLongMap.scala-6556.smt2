; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83252 () Bool)

(assert start!83252)

(declare-fun b_free!19217 () Bool)

(declare-fun b_next!19217 () Bool)

(assert (=> start!83252 (= b_free!19217 (not b_next!19217))))

(declare-fun tp!66931 () Bool)

(declare-fun b_and!30723 () Bool)

(assert (=> start!83252 (= tp!66931 b_and!30723)))

(declare-fun b!970909 () Bool)

(declare-fun e!547377 () Bool)

(assert (=> b!970909 (= e!547377 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34469 0))(
  ( (V!34470 (val!11108 Int)) )
))
(declare-fun zeroValue!1367 () V!34469)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-datatypes ((ValueCell!10576 0))(
  ( (ValueCellFull!10576 (v!13667 V!34469)) (EmptyCell!10576) )
))
(declare-datatypes ((array!60263 0))(
  ( (array!60264 (arr!28991 (Array (_ BitVec 32) ValueCell!10576)) (size!29471 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60263)

(declare-datatypes ((tuple2!14336 0))(
  ( (tuple2!14337 (_1!7178 (_ BitVec 64)) (_2!7178 V!34469)) )
))
(declare-datatypes ((List!20227 0))(
  ( (Nil!20224) (Cons!20223 (h!21385 tuple2!14336) (t!28598 List!20227)) )
))
(declare-datatypes ((ListLongMap!13047 0))(
  ( (ListLongMap!13048 (toList!6539 List!20227)) )
))
(declare-fun lt!431740 () ListLongMap!13047)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60265 0))(
  ( (array!60266 (arr!28992 (Array (_ BitVec 32) (_ BitVec 64))) (size!29472 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60265)

(declare-fun minValue!1367 () V!34469)

(declare-fun getCurrentListMap!3724 (array!60265 array!60263 (_ BitVec 32) (_ BitVec 32) V!34469 V!34469 (_ BitVec 32) Int) ListLongMap!13047)

(assert (=> b!970909 (= lt!431740 (getCurrentListMap!3724 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!970910 () Bool)

(declare-fun res!649968 () Bool)

(assert (=> b!970910 (=> (not res!649968) (not e!547377))))

(assert (=> b!970910 (= res!649968 (and (= (size!29471 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29472 _keys!1717) (size!29471 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970911 () Bool)

(declare-fun res!649964 () Bool)

(assert (=> b!970911 (=> (not res!649964) (not e!547377))))

(declare-datatypes ((List!20228 0))(
  ( (Nil!20225) (Cons!20224 (h!21386 (_ BitVec 64)) (t!28599 List!20228)) )
))
(declare-fun arrayNoDuplicates!0 (array!60265 (_ BitVec 32) List!20228) Bool)

(assert (=> b!970911 (= res!649964 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20225))))

(declare-fun b!970912 () Bool)

(declare-fun e!547374 () Bool)

(declare-fun tp_is_empty!22115 () Bool)

(assert (=> b!970912 (= e!547374 tp_is_empty!22115)))

(declare-fun b!970913 () Bool)

(declare-fun res!649965 () Bool)

(assert (=> b!970913 (=> (not res!649965) (not e!547377))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970913 (= res!649965 (validKeyInArray!0 (select (arr!28992 _keys!1717) i!822)))))

(declare-fun res!649969 () Bool)

(assert (=> start!83252 (=> (not res!649969) (not e!547377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83252 (= res!649969 (validMask!0 mask!2147))))

(assert (=> start!83252 e!547377))

(assert (=> start!83252 true))

(declare-fun e!547376 () Bool)

(declare-fun array_inv!22329 (array!60263) Bool)

(assert (=> start!83252 (and (array_inv!22329 _values!1425) e!547376)))

(assert (=> start!83252 tp_is_empty!22115))

(assert (=> start!83252 tp!66931))

(declare-fun array_inv!22330 (array!60265) Bool)

(assert (=> start!83252 (array_inv!22330 _keys!1717)))

(declare-fun b!970914 () Bool)

(declare-fun e!547375 () Bool)

(assert (=> b!970914 (= e!547375 tp_is_empty!22115)))

(declare-fun mapNonEmpty!35182 () Bool)

(declare-fun mapRes!35182 () Bool)

(declare-fun tp!66930 () Bool)

(assert (=> mapNonEmpty!35182 (= mapRes!35182 (and tp!66930 e!547374))))

(declare-fun mapRest!35182 () (Array (_ BitVec 32) ValueCell!10576))

(declare-fun mapValue!35182 () ValueCell!10576)

(declare-fun mapKey!35182 () (_ BitVec 32))

(assert (=> mapNonEmpty!35182 (= (arr!28991 _values!1425) (store mapRest!35182 mapKey!35182 mapValue!35182))))

(declare-fun b!970915 () Bool)

(declare-fun res!649967 () Bool)

(assert (=> b!970915 (=> (not res!649967) (not e!547377))))

(declare-fun contains!5594 (ListLongMap!13047 (_ BitVec 64)) Bool)

(assert (=> b!970915 (= res!649967 (contains!5594 (getCurrentListMap!3724 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28992 _keys!1717) i!822)))))

(declare-fun b!970916 () Bool)

(declare-fun res!649966 () Bool)

(assert (=> b!970916 (=> (not res!649966) (not e!547377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60265 (_ BitVec 32)) Bool)

(assert (=> b!970916 (= res!649966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970917 () Bool)

(assert (=> b!970917 (= e!547376 (and e!547375 mapRes!35182))))

(declare-fun condMapEmpty!35182 () Bool)

(declare-fun mapDefault!35182 () ValueCell!10576)

