; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33988 () Bool)

(assert start!33988)

(declare-fun b_free!7111 () Bool)

(declare-fun b_next!7111 () Bool)

(assert (=> start!33988 (= b_free!7111 (not b_next!7111))))

(declare-fun tp!24852 () Bool)

(declare-fun b_and!14319 () Bool)

(assert (=> start!33988 (= tp!24852 b_and!14319)))

(declare-fun b!338273 () Bool)

(declare-fun e!207573 () Bool)

(declare-fun tp_is_empty!7063 () Bool)

(assert (=> b!338273 (= e!207573 tp_is_empty!7063)))

(declare-fun b!338274 () Bool)

(declare-fun res!186928 () Bool)

(declare-fun e!207572 () Bool)

(assert (=> b!338274 (=> (not res!186928) (not e!207572))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338274 (= res!186928 (validKeyInArray!0 k!1348))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun b!338275 () Bool)

(declare-datatypes ((array!17693 0))(
  ( (array!17694 (arr!8369 (Array (_ BitVec 32) (_ BitVec 64))) (size!8721 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17693)

(declare-fun lt!160776 () Bool)

(declare-fun e!207571 () Bool)

(assert (=> b!338275 (= e!207571 (and (not lt!160776) (not (= (size!8721 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-datatypes ((Unit!10496 0))(
  ( (Unit!10497) )
))
(declare-fun lt!160779 () Unit!10496)

(declare-fun e!207570 () Unit!10496)

(assert (=> b!338275 (= lt!160779 e!207570)))

(declare-fun c!52349 () Bool)

(assert (=> b!338275 (= c!52349 lt!160776)))

(declare-fun arrayContainsKey!0 (array!17693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338275 (= lt!160776 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!338276 () Bool)

(assert (=> b!338276 (= e!207572 e!207571)))

(declare-fun res!186924 () Bool)

(assert (=> b!338276 (=> (not res!186924) (not e!207571))))

(declare-datatypes ((SeekEntryResult!3236 0))(
  ( (MissingZero!3236 (index!15123 (_ BitVec 32))) (Found!3236 (index!15124 (_ BitVec 32))) (Intermediate!3236 (undefined!4048 Bool) (index!15125 (_ BitVec 32)) (x!33719 (_ BitVec 32))) (Undefined!3236) (MissingVacant!3236 (index!15126 (_ BitVec 32))) )
))
(declare-fun lt!160777 () SeekEntryResult!3236)

(assert (=> b!338276 (= res!186924 (and (not (is-Found!3236 lt!160777)) (is-MissingZero!3236 lt!160777)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17693 (_ BitVec 32)) SeekEntryResult!3236)

(assert (=> b!338276 (= lt!160777 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338277 () Bool)

(declare-fun res!186926 () Bool)

(assert (=> b!338277 (=> (not res!186926) (not e!207572))))

(declare-datatypes ((List!4822 0))(
  ( (Nil!4819) (Cons!4818 (h!5674 (_ BitVec 64)) (t!9928 List!4822)) )
))
(declare-fun arrayNoDuplicates!0 (array!17693 (_ BitVec 32) List!4822) Bool)

(assert (=> b!338277 (= res!186926 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4819))))

(declare-fun b!338278 () Bool)

(declare-fun res!186927 () Bool)

(assert (=> b!338278 (=> (not res!186927) (not e!207572))))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10395 0))(
  ( (V!10396 (val!3576 Int)) )
))
(declare-datatypes ((ValueCell!3188 0))(
  ( (ValueCellFull!3188 (v!5739 V!10395)) (EmptyCell!3188) )
))
(declare-datatypes ((array!17695 0))(
  ( (array!17696 (arr!8370 (Array (_ BitVec 32) ValueCell!3188)) (size!8722 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17695)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10395)

(declare-fun zeroValue!1467 () V!10395)

(declare-datatypes ((tuple2!5182 0))(
  ( (tuple2!5183 (_1!2601 (_ BitVec 64)) (_2!2601 V!10395)) )
))
(declare-datatypes ((List!4823 0))(
  ( (Nil!4820) (Cons!4819 (h!5675 tuple2!5182) (t!9929 List!4823)) )
))
(declare-datatypes ((ListLongMap!4109 0))(
  ( (ListLongMap!4110 (toList!2070 List!4823)) )
))
(declare-fun contains!2115 (ListLongMap!4109 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1590 (array!17693 array!17695 (_ BitVec 32) (_ BitVec 32) V!10395 V!10395 (_ BitVec 32) Int) ListLongMap!4109)

(assert (=> b!338278 (= res!186927 (not (contains!2115 (getCurrentListMap!1590 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!338279 () Bool)

(declare-fun Unit!10498 () Unit!10496)

(assert (=> b!338279 (= e!207570 Unit!10498)))

(declare-fun lt!160778 () Unit!10496)

(declare-fun lemmaArrayContainsKeyThenInListMap!269 (array!17693 array!17695 (_ BitVec 32) (_ BitVec 32) V!10395 V!10395 (_ BitVec 64) (_ BitVec 32) Int) Unit!10496)

(declare-fun arrayScanForKey!0 (array!17693 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338279 (= lt!160778 (lemmaArrayContainsKeyThenInListMap!269 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338279 false))

(declare-fun b!338280 () Bool)

(declare-fun e!207569 () Bool)

(assert (=> b!338280 (= e!207569 tp_is_empty!7063)))

(declare-fun mapNonEmpty!12006 () Bool)

(declare-fun mapRes!12006 () Bool)

(declare-fun tp!24851 () Bool)

(assert (=> mapNonEmpty!12006 (= mapRes!12006 (and tp!24851 e!207569))))

(declare-fun mapKey!12006 () (_ BitVec 32))

(declare-fun mapRest!12006 () (Array (_ BitVec 32) ValueCell!3188))

(declare-fun mapValue!12006 () ValueCell!3188)

(assert (=> mapNonEmpty!12006 (= (arr!8370 _values!1525) (store mapRest!12006 mapKey!12006 mapValue!12006))))

(declare-fun b!338281 () Bool)

(declare-fun Unit!10499 () Unit!10496)

(assert (=> b!338281 (= e!207570 Unit!10499)))

(declare-fun res!186923 () Bool)

(assert (=> start!33988 (=> (not res!186923) (not e!207572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33988 (= res!186923 (validMask!0 mask!2385))))

(assert (=> start!33988 e!207572))

(assert (=> start!33988 true))

(assert (=> start!33988 tp_is_empty!7063))

(assert (=> start!33988 tp!24852))

(declare-fun e!207568 () Bool)

(declare-fun array_inv!6196 (array!17695) Bool)

(assert (=> start!33988 (and (array_inv!6196 _values!1525) e!207568)))

(declare-fun array_inv!6197 (array!17693) Bool)

(assert (=> start!33988 (array_inv!6197 _keys!1895)))

(declare-fun b!338282 () Bool)

(declare-fun res!186925 () Bool)

(assert (=> b!338282 (=> (not res!186925) (not e!207572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17693 (_ BitVec 32)) Bool)

(assert (=> b!338282 (= res!186925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338283 () Bool)

(declare-fun res!186929 () Bool)

(assert (=> b!338283 (=> (not res!186929) (not e!207572))))

(assert (=> b!338283 (= res!186929 (and (= (size!8722 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8721 _keys!1895) (size!8722 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338284 () Bool)

(assert (=> b!338284 (= e!207568 (and e!207573 mapRes!12006))))

(declare-fun condMapEmpty!12006 () Bool)

(declare-fun mapDefault!12006 () ValueCell!3188)

