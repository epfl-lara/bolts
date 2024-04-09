; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34178 () Bool)

(assert start!34178)

(declare-fun b_free!7193 () Bool)

(declare-fun b_next!7193 () Bool)

(assert (=> start!34178 (= b_free!7193 (not b_next!7193))))

(declare-fun tp!25113 () Bool)

(declare-fun b_and!14411 () Bool)

(assert (=> start!34178 (= tp!25113 b_and!14411)))

(declare-fun mapIsEmpty!12144 () Bool)

(declare-fun mapRes!12144 () Bool)

(assert (=> mapIsEmpty!12144 mapRes!12144))

(declare-fun b!340325 () Bool)

(declare-fun res!188050 () Bool)

(declare-fun e!208789 () Bool)

(assert (=> b!340325 (=> (not res!188050) (not e!208789))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10503 0))(
  ( (V!10504 (val!3617 Int)) )
))
(declare-datatypes ((ValueCell!3229 0))(
  ( (ValueCellFull!3229 (v!5785 V!10503)) (EmptyCell!3229) )
))
(declare-datatypes ((array!17861 0))(
  ( (array!17862 (arr!8448 (Array (_ BitVec 32) ValueCell!3229)) (size!8800 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17861)

(declare-datatypes ((array!17863 0))(
  ( (array!17864 (arr!8449 (Array (_ BitVec 32) (_ BitVec 64))) (size!8801 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17863)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!340325 (= res!188050 (and (= (size!8800 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8801 _keys!1895) (size!8800 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340326 () Bool)

(declare-fun e!208787 () Bool)

(declare-fun tp_is_empty!7145 () Bool)

(assert (=> b!340326 (= e!208787 tp_is_empty!7145)))

(declare-fun b!340327 () Bool)

(declare-fun e!208790 () Bool)

(assert (=> b!340327 (= e!208789 e!208790)))

(declare-fun res!188045 () Bool)

(assert (=> b!340327 (=> (not res!188045) (not e!208790))))

(declare-datatypes ((SeekEntryResult!3266 0))(
  ( (MissingZero!3266 (index!15243 (_ BitVec 32))) (Found!3266 (index!15244 (_ BitVec 32))) (Intermediate!3266 (undefined!4078 Bool) (index!15245 (_ BitVec 32)) (x!33903 (_ BitVec 32))) (Undefined!3266) (MissingVacant!3266 (index!15246 (_ BitVec 32))) )
))
(declare-fun lt!161564 () SeekEntryResult!3266)

(assert (=> b!340327 (= res!188045 (and (not (is-Found!3266 lt!161564)) (not (is-MissingZero!3266 lt!161564)) (is-MissingVacant!3266 lt!161564)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17863 (_ BitVec 32)) SeekEntryResult!3266)

(assert (=> b!340327 (= lt!161564 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!340328 () Bool)

(assert (=> b!340328 (= e!208790 false)))

(declare-fun lt!161565 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17863 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340328 (= lt!161565 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!188048 () Bool)

(assert (=> start!34178 (=> (not res!188048) (not e!208789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34178 (= res!188048 (validMask!0 mask!2385))))

(assert (=> start!34178 e!208789))

(assert (=> start!34178 true))

(assert (=> start!34178 tp_is_empty!7145))

(assert (=> start!34178 tp!25113))

(declare-fun e!208786 () Bool)

(declare-fun array_inv!6254 (array!17861) Bool)

(assert (=> start!34178 (and (array_inv!6254 _values!1525) e!208786)))

(declare-fun array_inv!6255 (array!17863) Bool)

(assert (=> start!34178 (array_inv!6255 _keys!1895)))

(declare-fun mapNonEmpty!12144 () Bool)

(declare-fun tp!25112 () Bool)

(assert (=> mapNonEmpty!12144 (= mapRes!12144 (and tp!25112 e!208787))))

(declare-fun mapKey!12144 () (_ BitVec 32))

(declare-fun mapValue!12144 () ValueCell!3229)

(declare-fun mapRest!12144 () (Array (_ BitVec 32) ValueCell!3229))

(assert (=> mapNonEmpty!12144 (= (arr!8448 _values!1525) (store mapRest!12144 mapKey!12144 mapValue!12144))))

(declare-fun b!340329 () Bool)

(declare-fun e!208788 () Bool)

(assert (=> b!340329 (= e!208788 tp_is_empty!7145)))

(declare-fun b!340330 () Bool)

(declare-fun res!188049 () Bool)

(assert (=> b!340330 (=> (not res!188049) (not e!208789))))

(declare-datatypes ((List!4883 0))(
  ( (Nil!4880) (Cons!4879 (h!5735 (_ BitVec 64)) (t!9999 List!4883)) )
))
(declare-fun arrayNoDuplicates!0 (array!17863 (_ BitVec 32) List!4883) Bool)

(assert (=> b!340330 (= res!188049 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4880))))

(declare-fun b!340331 () Bool)

(declare-fun res!188047 () Bool)

(assert (=> b!340331 (=> (not res!188047) (not e!208789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340331 (= res!188047 (validKeyInArray!0 k!1348))))

(declare-fun b!340332 () Bool)

(declare-fun res!188051 () Bool)

(assert (=> b!340332 (=> (not res!188051) (not e!208790))))

(declare-fun arrayContainsKey!0 (array!17863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340332 (= res!188051 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!340333 () Bool)

(assert (=> b!340333 (= e!208786 (and e!208788 mapRes!12144))))

(declare-fun condMapEmpty!12144 () Bool)

(declare-fun mapDefault!12144 () ValueCell!3229)

