; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33910 () Bool)

(assert start!33910)

(declare-fun b_free!7081 () Bool)

(declare-fun b_next!7081 () Bool)

(assert (=> start!33910 (= b_free!7081 (not b_next!7081))))

(declare-fun tp!24756 () Bool)

(declare-fun b_and!14285 () Bool)

(assert (=> start!33910 (= tp!24756 b_and!14285)))

(declare-fun b!337455 () Bool)

(declare-fun res!186510 () Bool)

(declare-fun e!207075 () Bool)

(assert (=> b!337455 (=> (not res!186510) (not e!207075))))

(declare-datatypes ((array!17633 0))(
  ( (array!17634 (arr!8341 (Array (_ BitVec 32) (_ BitVec 64))) (size!8693 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17633)

(declare-datatypes ((List!4807 0))(
  ( (Nil!4804) (Cons!4803 (h!5659 (_ BitVec 64)) (t!9909 List!4807)) )
))
(declare-fun arrayNoDuplicates!0 (array!17633 (_ BitVec 32) List!4807) Bool)

(assert (=> b!337455 (= res!186510 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4804))))

(declare-fun res!186507 () Bool)

(assert (=> start!33910 (=> (not res!186507) (not e!207075))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33910 (= res!186507 (validMask!0 mask!2385))))

(assert (=> start!33910 e!207075))

(assert (=> start!33910 true))

(declare-fun tp_is_empty!7033 () Bool)

(assert (=> start!33910 tp_is_empty!7033))

(assert (=> start!33910 tp!24756))

(declare-datatypes ((V!10355 0))(
  ( (V!10356 (val!3561 Int)) )
))
(declare-datatypes ((ValueCell!3173 0))(
  ( (ValueCellFull!3173 (v!5722 V!10355)) (EmptyCell!3173) )
))
(declare-datatypes ((array!17635 0))(
  ( (array!17636 (arr!8342 (Array (_ BitVec 32) ValueCell!3173)) (size!8694 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17635)

(declare-fun e!207073 () Bool)

(declare-fun array_inv!6178 (array!17635) Bool)

(assert (=> start!33910 (and (array_inv!6178 _values!1525) e!207073)))

(declare-fun array_inv!6179 (array!17633) Bool)

(assert (=> start!33910 (array_inv!6179 _keys!1895)))

(declare-fun b!337456 () Bool)

(declare-fun res!186508 () Bool)

(assert (=> b!337456 (=> (not res!186508) (not e!207075))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!337456 (= res!186508 (and (= (size!8694 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8693 _keys!1895) (size!8694 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!337457 () Bool)

(declare-fun e!207076 () Bool)

(assert (=> b!337457 (= e!207076 tp_is_empty!7033)))

(declare-fun mapNonEmpty!11955 () Bool)

(declare-fun mapRes!11955 () Bool)

(declare-fun tp!24755 () Bool)

(assert (=> mapNonEmpty!11955 (= mapRes!11955 (and tp!24755 e!207076))))

(declare-fun mapRest!11955 () (Array (_ BitVec 32) ValueCell!3173))

(declare-fun mapKey!11955 () (_ BitVec 32))

(declare-fun mapValue!11955 () ValueCell!3173)

(assert (=> mapNonEmpty!11955 (= (arr!8342 _values!1525) (store mapRest!11955 mapKey!11955 mapValue!11955))))

(declare-fun b!337458 () Bool)

(declare-datatypes ((Unit!10454 0))(
  ( (Unit!10455) )
))
(declare-fun e!207077 () Unit!10454)

(declare-fun Unit!10456 () Unit!10454)

(assert (=> b!337458 (= e!207077 Unit!10456)))

(declare-fun b!337459 () Bool)

(declare-fun e!207074 () Bool)

(assert (=> b!337459 (= e!207075 e!207074)))

(declare-fun res!186511 () Bool)

(assert (=> b!337459 (=> (not res!186511) (not e!207074))))

(declare-datatypes ((SeekEntryResult!3229 0))(
  ( (MissingZero!3229 (index!15095 (_ BitVec 32))) (Found!3229 (index!15096 (_ BitVec 32))) (Intermediate!3229 (undefined!4041 Bool) (index!15097 (_ BitVec 32)) (x!33652 (_ BitVec 32))) (Undefined!3229) (MissingVacant!3229 (index!15098 (_ BitVec 32))) )
))
(declare-fun lt!160435 () SeekEntryResult!3229)

(assert (=> b!337459 (= res!186511 (and (not (is-Found!3229 lt!160435)) (is-MissingZero!3229 lt!160435)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17633 (_ BitVec 32)) SeekEntryResult!3229)

(assert (=> b!337459 (= lt!160435 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!337460 () Bool)

(declare-fun e!207072 () Bool)

(assert (=> b!337460 (= e!207073 (and e!207072 mapRes!11955))))

(declare-fun condMapEmpty!11955 () Bool)

(declare-fun mapDefault!11955 () ValueCell!3173)

